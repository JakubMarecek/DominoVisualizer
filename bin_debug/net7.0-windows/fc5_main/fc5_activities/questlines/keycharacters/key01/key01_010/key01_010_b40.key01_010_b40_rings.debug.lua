LUAC�* -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc5_main/fc5_activities/questlines/keycharacters/key01/key01_010/key01_010_b40.domino
-- User graph: KEY01_010_B40_Rings
-- 
-- 
-- DO NOT EDIT MANUALLY THIS FILE OR YOUR CHANGES WILL BE LOST!
-- Please modify the original Domino script instead. You have been warned.

-- *** SCRIPT INPUT REFLECTION ***
--[[
<InputReflection>
    <DataIn Name="IsReloaded" Type="Core|bool" />
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
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Brick_TakeControl_Vehicle.Brick_TakeControl_Vehicle_Generic.debug.lua");
        cboxRes:RegisterBox("Domino/System/Activity/GetActivityState_v2.lua");
        cboxRes:RegisterBox("Domino/System/AI/SpawnAI.lua");
        cboxRes:RegisterBox("Domino/System/BroadcastMessage.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/Player/RequestPhoneCall_v2.lua");
        cboxRes:RegisterBox("Domino/user/FC5_main/FC5_Activities/QuestLines/KeyCharacters/KEY01/KEY01_010/KEY01_010_B40.Custom_Brick_Deliver_v5.debug.lua");
        
        -- Load resources
        cboxRes:LoadResource([[2930905897.bnk]], "CSoundResource");
        cboxRes:LoadResource([[entityarchetypeslibrary/9015256522055681.ark.fcb]], "CEntityArchetypeRes");
        cboxRes:LoadResource([[1364994079.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1212050628.bnk]], "CSoundResource");
        cboxRes:LoadResource([[425657904.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2766084302.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3400333049.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3948447009.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1304764430.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2187237621.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1381082468.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2935907834.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3433979623.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3562507017.bnk]], "CSoundResource");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/FC5_main/FC5_Activities/QuestLines/KeyCharacters/KEY01/KEY01_010/KEY01_010_B40.KEY01_010_B40_Rings.debug.lua")] = {
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
                name = "IsReloaded",
                type = "bool",
            },
        },
        dataInCount = 1,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/Library/Sp/Lib_Brick_TakeControl_Vehicle.Brick_TakeControl_Vehicle_Generic.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Enable",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "Started",
                delayed = false,
            },
            [1] = {
                name = "Success",
                delayed = true,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "aVehicleArchetype",
                type = "archetype",
            },
            [1] = {
                name = "bCompletePreviousObjective",
                type = "bool",
            },
            [2] = {
                name = "hasObjective",
                type = "bool",
            },
            [3] = {
                name = "o_Objective",
                type = "oasis",
            },
            [4] = {
                name = "sVehicleType",
                type = "string",
            },
        },
        dataInCount = 5,
        dataOut = {
            [0] = {
                name = "e_GenericVehicleID",
                type = "entity",
            },
        },
        dataOutCount = 1,
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
    metadataTable[GetPathID("Domino/user/FC5_main/FC5_Activities/QuestLines/KeyCharacters/KEY01/KEY01_010/KEY01_010_B40.Custom_Brick_Deliver_v5.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "In",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "Failed",
                delayed = false,
            },
            [1] = {
                name = "Success",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "CallSoundID",
                type = "Sound",
            },
            [1] = {
                name = "eTargetMarker",
                type = "entity",
            },
            [2] = {
                name = "eTargetTrigger",
                type = "entity",
            },
            [3] = {
                name = "eVehicle",
                type = "entity",
            },
            [4] = {
                name = "eVehicleMarker",
                type = "entity",
            },
            [5] = {
                name = "eVFX",
                type = "entity",
            },
            [6] = {
                name = "FailReason",
                type = "oasis",
            },
            [7] = {
                name = "ObjectiveID",
                type = "oasis",
            },
        },
        dataInCount = 8,
        dataOut = {
        },
        dataOutCount = 0,
    };
end;

function export:Init(cbox)
    local l0;
    self._name = "KEY01_010_B40_Rings";
    self._elementPathId = "DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B40.domino|@KEY01_010_B40_Rings";
    self.Out = DummyFunction;
    self.ePlayerVehicle = nil;
    self.bPlaneLoaded = false;
    self.box_RequestPhoneCall_v2_30 = cbox:CreateBox("Domino/System/Player/RequestPhoneCall_v2.lua");
    l0 = self.box_RequestPhoneCall_v2_30;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RequestPhoneCall_v2_30");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B40.domino|@KEY01_010_B40_Rings|134985978");
    l0:SetConnections({
        -- Completed,
        [1] = self.f_box_RequestPhoneCall_v2_30_Completed,
    });
    self.box_Custom_Brick_Deliver_v5_12 = cbox:CreateBox("Domino/user/FC5_main/FC5_Activities/QuestLines/KeyCharacters/KEY01/KEY01_010/KEY01_010_B40.Custom_Brick_Deliver_v5.debug.lua");
    l0 = self.box_Custom_Brick_Deliver_v5_12;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Custom_Brick_Deliver_v5_12");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B40.domino|@KEY01_010_B40_Rings|185231973");
    l0:SetConnections({
        -- Success,
        [1] = self.f_box_Custom_Brick_Deliver_v5_12_Success,
    });
    self.box_MultipleOR_5 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_5;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_5");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B40.domino|@KEY01_010_B40_Rings|204419656");
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
    self.box_RequestPhoneCall_v2_9 = cbox:CreateBox("Domino/System/Player/RequestPhoneCall_v2.lua");
    l0 = self.box_RequestPhoneCall_v2_9;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RequestPhoneCall_v2_9");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B40.domino|@KEY01_010_B40_Rings|554898150");
    l0:SetConnections({
    });
    self.box_RequestPhoneCall_v2_34 = cbox:CreateBox("Domino/System/Player/RequestPhoneCall_v2.lua");
    l0 = self.box_RequestPhoneCall_v2_34;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RequestPhoneCall_v2_34");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B40.domino|@KEY01_010_B40_Rings|703191283");
    l0:SetConnections({
    });
    self.box_Custom_Brick_Deliver_v5_7 = cbox:CreateBox("Domino/user/FC5_main/FC5_Activities/QuestLines/KeyCharacters/KEY01/KEY01_010/KEY01_010_B40.Custom_Brick_Deliver_v5.debug.lua");
    l0 = self.box_Custom_Brick_Deliver_v5_7;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Custom_Brick_Deliver_v5_7");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B40.domino|@KEY01_010_B40_Rings|734841933");
    l0:SetConnections({
        -- Success,
        [1] = self.f_box_Custom_Brick_Deliver_v5_7_Success,
    });
    self.box_Custom_Brick_Deliver_v5_24 = cbox:CreateBox("Domino/user/FC5_main/FC5_Activities/QuestLines/KeyCharacters/KEY01/KEY01_010/KEY01_010_B40.Custom_Brick_Deliver_v5.debug.lua");
    l0 = self.box_Custom_Brick_Deliver_v5_24;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Custom_Brick_Deliver_v5_24");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B40.domino|@KEY01_010_B40_Rings|767108013");
    l0:SetConnections({
        -- Success,
        [1] = self.f_box_Custom_Brick_Deliver_v5_24_Success,
    });
    self.box_Custom_Brick_Deliver_v5_18 = cbox:CreateBox("Domino/user/FC5_main/FC5_Activities/QuestLines/KeyCharacters/KEY01/KEY01_010/KEY01_010_B40.Custom_Brick_Deliver_v5.debug.lua");
    l0 = self.box_Custom_Brick_Deliver_v5_18;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Custom_Brick_Deliver_v5_18");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B40.domino|@KEY01_010_B40_Rings|778031141");
    l0:SetConnections({
        -- Success,
        [1] = self.f_box_Custom_Brick_Deliver_v5_18_Success,
    });
    self.box_Custom_Brick_Deliver_v5_19 = cbox:CreateBox("Domino/user/FC5_main/FC5_Activities/QuestLines/KeyCharacters/KEY01/KEY01_010/KEY01_010_B40.Custom_Brick_Deliver_v5.debug.lua");
    l0 = self.box_Custom_Brick_Deliver_v5_19;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Custom_Brick_Deliver_v5_19");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B40.domino|@KEY01_010_B40_Rings|801385863");
    l0:SetConnections({
        -- Success,
        [1] = self.f_box_Custom_Brick_Deliver_v5_19_Success,
    });
    self.box_Custom_Brick_Deliver_v5_25 = cbox:CreateBox("Domino/user/FC5_main/FC5_Activities/QuestLines/KeyCharacters/KEY01/KEY01_010/KEY01_010_B40.Custom_Brick_Deliver_v5.debug.lua");
    l0 = self.box_Custom_Brick_Deliver_v5_25;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Custom_Brick_Deliver_v5_25");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B40.domino|@KEY01_010_B40_Rings|902174155");
    l0:SetConnections({
        -- Success,
        [1] = self.f_box_Custom_Brick_Deliver_v5_25_Success,
    });
    self.box_RequestPhoneCall_v2_23 = cbox:CreateBox("Domino/System/Player/RequestPhoneCall_v2.lua");
    l0 = self.box_RequestPhoneCall_v2_23;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RequestPhoneCall_v2_23");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B40.domino|@KEY01_010_B40_Rings|1027553873");
    l0:SetConnections({
        -- Completed,
        [1] = self.f_box_RequestPhoneCall_v2_23_Completed,
    });
    self.box_Custom_Brick_Deliver_v5_6 = cbox:CreateBox("Domino/user/FC5_main/FC5_Activities/QuestLines/KeyCharacters/KEY01/KEY01_010/KEY01_010_B40.Custom_Brick_Deliver_v5.debug.lua");
    l0 = self.box_Custom_Brick_Deliver_v5_6;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Custom_Brick_Deliver_v5_6");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B40.domino|@KEY01_010_B40_Rings|1132684003");
    l0:SetConnections({
        -- Success,
        [1] = self.f_box_Custom_Brick_Deliver_v5_6_Success,
    });
    self.box_SpawnAI_21 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_21;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_21");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B40.domino|@KEY01_010_B40_Rings|1213526490");
    l0:SetConnections({
    });
    self.box_RequestPhoneCall_v2_27 = cbox:CreateBox("Domino/System/Player/RequestPhoneCall_v2.lua");
    l0 = self.box_RequestPhoneCall_v2_27;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RequestPhoneCall_v2_27");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B40.domino|@KEY01_010_B40_Rings|1331351204");
    l0:SetConnections({
        -- Completed,
        [1] = self.f_box_RequestPhoneCall_v2_27_Completed,
    });
    self.box_RequestPhoneCall_v2_17 = cbox:CreateBox("Domino/System/Player/RequestPhoneCall_v2.lua");
    l0 = self.box_RequestPhoneCall_v2_17;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RequestPhoneCall_v2_17");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B40.domino|@KEY01_010_B40_Rings|1405574429");
    l0:SetConnections({
        -- Completed,
        [1] = self.f_box_RequestPhoneCall_v2_17_Completed,
    });
    self.box_RequestPhoneCall_v2_38 = cbox:CreateBox("Domino/System/Player/RequestPhoneCall_v2.lua");
    l0 = self.box_RequestPhoneCall_v2_38;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RequestPhoneCall_v2_38");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B40.domino|@KEY01_010_B40_Rings|1427433060");
    l0:SetConnections({
    });
    self.box_MultipleOR_29 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_29;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_29");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B40.domino|@KEY01_010_B40_Rings|1550089311");
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
        [0] = self.f_box_MultipleOR_29_Out,
    });
    self.box_RequestPhoneCall_v2_35 = cbox:CreateBox("Domino/System/Player/RequestPhoneCall_v2.lua");
    l0 = self.box_RequestPhoneCall_v2_35;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RequestPhoneCall_v2_35");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B40.domino|@KEY01_010_B40_Rings|1570789014");
    l0:SetConnections({
        -- Completed,
        [1] = self.f_box_RequestPhoneCall_v2_35_Completed,
    });
    self.box_Custom_Brick_Deliver_v5_3 = cbox:CreateBox("Domino/user/FC5_main/FC5_Activities/QuestLines/KeyCharacters/KEY01/KEY01_010/KEY01_010_B40.Custom_Brick_Deliver_v5.debug.lua");
    l0 = self.box_Custom_Brick_Deliver_v5_3;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Custom_Brick_Deliver_v5_3");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B40.domino|@KEY01_010_B40_Rings|1572862726");
    l0:SetConnections({
        -- Success,
        [1] = self.f_box_Custom_Brick_Deliver_v5_3_Success,
    });
    self.box_SpawnAI_2 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_2");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B40.domino|@KEY01_010_B40_Rings|1580629997");
    l0:SetConnections({
    });
    self.box_Brick_TakeControl_Vehicle_Generic_1 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_TakeControl_Vehicle.Brick_TakeControl_Vehicle_Generic.debug.lua");
    l0 = self.box_Brick_TakeControl_Vehicle_Generic_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_TakeControl_Vehicle_Generic_1");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B40.domino|@KEY01_010_B40_Rings|1679538545");
    l0:SetConnections({
        -- Started,
        [0] = self.f_box_Brick_TakeControl_Vehicle_Generic_1_Started,
        -- Success,
        [1] = self.f_box_Brick_TakeControl_Vehicle_Generic_1_Success,
    });
    self.box_SpawnAI_4 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_4;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_4");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B40.domino|@KEY01_010_B40_Rings|1749361809");
    l0:SetConnections({
    });
    self.box_Custom_Brick_Deliver_v5_14 = cbox:CreateBox("Domino/user/FC5_main/FC5_Activities/QuestLines/KeyCharacters/KEY01/KEY01_010/KEY01_010_B40.Custom_Brick_Deliver_v5.debug.lua");
    l0 = self.box_Custom_Brick_Deliver_v5_14;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Custom_Brick_Deliver_v5_14");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B40.domino|@KEY01_010_B40_Rings|1903626639");
    l0:SetConnections({
        -- Success,
        [1] = self.f_box_Custom_Brick_Deliver_v5_14_Success,
    });
    self.box_MultipleOR_15 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_15;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_15");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B40.domino|@KEY01_010_B40_Rings|1974351692");
    l0:SetDynAnchorCount({
        controlIn = {
            [0] = 4,
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
        [0] = self.f_box_MultipleOR_15_Out,
    });
    self.box_RequestPhoneCall_v2_36 = cbox:CreateBox("Domino/System/Player/RequestPhoneCall_v2.lua");
    l0 = self.box_RequestPhoneCall_v2_36;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RequestPhoneCall_v2_36");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B40.domino|@KEY01_010_B40_Rings|2051687669");
    l0:SetConnections({
        -- Completed,
        [1] = self.f_box_RequestPhoneCall_v2_36_Completed,
    });
    self.box_RequestPhoneCall_v2_22 = cbox:CreateBox("Domino/System/Player/RequestPhoneCall_v2.lua");
    l0 = self.box_RequestPhoneCall_v2_22;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RequestPhoneCall_v2_22");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B40.domino|@KEY01_010_B40_Rings|2119596036");
    l0:SetConnections({
    });
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_Brick_TakeControl_Vehicle_Generic_1();
    l0 = self.box_Brick_TakeControl_Vehicle_Generic_1;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B40.domino|@KEY01_010_B40_Rings|572138664", "572138664", "KEY01_010_B40_Rings", "In", "box_Brick_TakeControl_Vehicle_Generic_1.Enable", self, l0:GetLuaBox());
    -- Enable
    l0:Exec(0, params);
end;

function export:f_box_RequestPhoneCall_v2_30_Completed()
    local params, l0, l1;
    params = self:OnEnter_box_BroadcastMessage_33();
    l0 = self.box_RequestPhoneCall_v2_30;
    l1 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B40.domino|@KEY01_010_B40_Rings|532751877", "532751877", "KEY01_010_B40_Rings", "box_RequestPhoneCall_v2_30.Completed", "box_BroadcastMessage_33.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Custom_Brick_Deliver_v5_12_Success()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_10();
    l0 = self.box_Custom_Brick_Deliver_v5_12;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B40.domino|@KEY01_010_B40_Rings|505551052", "505551052", "KEY01_010_B40_Rings", "box_Custom_Brick_Deliver_v5_12.Success", "box_OutputOrder_v2_10.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_5_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_31();
    l0 = self.box_MultipleOR_5;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B40.domino|@KEY01_010_B40_Rings|916589304", "916589304", "KEY01_010_B40_Rings", "box_MultipleOR_5.Out", "box_OutputOrder_v2_31.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_GetActivityState_v2_16_Active()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_15;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B40.domino|@KEY01_010_B40_Rings|624709568", "624709568", "KEY01_010_B40_Rings", "box_GetActivityState_v2_16.Active", "box_MultipleOR_15.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_GetActivityState_v2_16_Canceled()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_15;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B40.domino|@KEY01_010_B40_Rings|1161776058", "1161776058", "KEY01_010_B40_Rings", "box_GetActivityState_v2_16.Canceled", "box_MultipleOR_15.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 3);
end;

function export:f_box_GetActivityState_v2_16_Completed()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_RequestPhoneCall_v2_17();
    l0 = self.box_RequestPhoneCall_v2_17;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B40.domino|@KEY01_010_B40_Rings|437329390", "437329390", "KEY01_010_B40_Rings", "box_GetActivityState_v2_16.Completed", "box_RequestPhoneCall_v2_17.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
end;

function export:f_box_GetActivityState_v2_16_Failed()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_15;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B40.domino|@KEY01_010_B40_Rings|1795475113", "1795475113", "KEY01_010_B40_Rings", "box_GetActivityState_v2_16.Failed", "box_MultipleOR_15.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_GetActivityState_v2_16_Inactive()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_15;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B40.domino|@KEY01_010_B40_Rings|63400796", "63400796", "KEY01_010_B40_Rings", "box_GetActivityState_v2_16.Inactive", "box_MultipleOR_15.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_20_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Custom_Brick_Deliver_v5_19();
    l0 = self.box_Custom_Brick_Deliver_v5_19;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B40.domino|@KEY01_010_B40_Rings|1574546026", "1574546026", "KEY01_010_B40_Rings", "box_OutputOrder_v2_20.Out", "box_Custom_Brick_Deliver_v5_19.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_20_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_4();
    l0 = self.box_SpawnAI_4;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B40.domino|@KEY01_010_B40_Rings|1959436571", "1959436571", "KEY01_010_B40_Rings", "box_OutputOrder_v2_20.Out", "box_SpawnAI_4.Spawn", clone:GetLuaBox(), l0:GetLuaBox());
    -- Spawn
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_20_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_RequestPhoneCall_v2_22();
    l0 = self.box_RequestPhoneCall_v2_22;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B40.domino|@KEY01_010_B40_Rings|1189585398", "1189585398", "KEY01_010_B40_Rings", "box_OutputOrder_v2_20.Out", "box_RequestPhoneCall_v2_22.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_8_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B40.domino|@KEY01_010_B40_Rings|1496243281", "1496243281", "KEY01_010_B40_Rings", "box_OutputOrder_v2_8.Out", "Out", clone:GetLuaBox(), self);
    self:Out();
end;

function export:f_box_OutputOrder_v2_8_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_2();
    l0 = self.box_SpawnAI_2;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B40.domino|@KEY01_010_B40_Rings|1110766755", "1110766755", "KEY01_010_B40_Rings", "box_OutputOrder_v2_8.Out", "box_SpawnAI_2.Spawn", clone:GetLuaBox(), l0:GetLuaBox());
    -- Spawn
    l0:Exec(1, params);
end;

function export:f_box_Custom_Brick_Deliver_v5_7_Success()
    local params, l0, l1;
    params = self:OnEnter_box_Custom_Brick_Deliver_v5_3();
    l0 = self.box_Custom_Brick_Deliver_v5_7;
    l1 = self.box_Custom_Brick_Deliver_v5_3;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B40.domino|@KEY01_010_B40_Rings|1991645514", "1991645514", "KEY01_010_B40_Rings", "box_Custom_Brick_Deliver_v5_7.Success", "box_Custom_Brick_Deliver_v5_3.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_Custom_Brick_Deliver_v5_24_Success()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_13();
    l0 = self.box_Custom_Brick_Deliver_v5_24;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B40.domino|@KEY01_010_B40_Rings|1910792389", "1910792389", "KEY01_010_B40_Rings", "box_Custom_Brick_Deliver_v5_24.Success", "box_OutputOrder_v2_13.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Custom_Brick_Deliver_v5_18_Success()
    local params, l0, l1;
    params = self:OnEnter_box_Custom_Brick_Deliver_v5_6();
    l0 = self.box_Custom_Brick_Deliver_v5_18;
    l1 = self.box_Custom_Brick_Deliver_v5_6;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B40.domino|@KEY01_010_B40_Rings|1741722756", "1741722756", "KEY01_010_B40_Rings", "box_Custom_Brick_Deliver_v5_18.Success", "box_Custom_Brick_Deliver_v5_6.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_Custom_Brick_Deliver_v5_19_Success()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_39();
    l0 = self.box_Custom_Brick_Deliver_v5_19;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B40.domino|@KEY01_010_B40_Rings|65807917", "65807917", "KEY01_010_B40_Rings", "box_Custom_Brick_Deliver_v5_19.Success", "box_OutputOrder_v2_39.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Custom_Brick_Deliver_v5_25_Success()
    local params, l0, l1;
    params = self:OnEnter_box_Custom_Brick_Deliver_v5_7();
    l0 = self.box_Custom_Brick_Deliver_v5_25;
    l1 = self.box_Custom_Brick_Deliver_v5_7;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B40.domino|@KEY01_010_B40_Rings|1507990557", "1507990557", "KEY01_010_B40_Rings", "box_Custom_Brick_Deliver_v5_25.Success", "box_Custom_Brick_Deliver_v5_7.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_RequestPhoneCall_v2_23_Completed()
    local params, l0, l1;
    params = self:OnEnter_box_RequestPhoneCall_v2_34();
    l0 = self.box_RequestPhoneCall_v2_23;
    l1 = self.box_RequestPhoneCall_v2_34;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B40.domino|@KEY01_010_B40_Rings|1994791859", "1994791859", "KEY01_010_B40_Rings", "box_RequestPhoneCall_v2_23.Completed", "box_RequestPhoneCall_v2_34.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_Custom_Brick_Deliver_v5_6_Success()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_8();
    l0 = self.box_Custom_Brick_Deliver_v5_6;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B40.domino|@KEY01_010_B40_Rings|1053571808", "1053571808", "KEY01_010_B40_Rings", "box_Custom_Brick_Deliver_v5_6.Success", "box_OutputOrder_v2_8.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_39_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Custom_Brick_Deliver_v5_12();
    l0 = self.box_Custom_Brick_Deliver_v5_12;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B40.domino|@KEY01_010_B40_Rings|2006363679", "2006363679", "KEY01_010_B40_Rings", "box_OutputOrder_v2_39.Out", "box_Custom_Brick_Deliver_v5_12.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_39_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_RequestPhoneCall_v2_35();
    l0 = self.box_RequestPhoneCall_v2_35;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B40.domino|@KEY01_010_B40_Rings|57198015", "57198015", "KEY01_010_B40_Rings", "box_OutputOrder_v2_39.Out", "box_RequestPhoneCall_v2_35.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_31_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Custom_Brick_Deliver_v5_14();
    l0 = self.box_Custom_Brick_Deliver_v5_14;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B40.domino|@KEY01_010_B40_Rings|1486991999", "1486991999", "KEY01_010_B40_Rings", "box_OutputOrder_v2_31.Out", "box_Custom_Brick_Deliver_v5_14.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_31_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetActivityState_v2_26();
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B40.domino|@KEY01_010_B40_Rings|433212552", "433212552", "KEY01_010_B40_Rings", "box_OutputOrder_v2_31.Out", "box_GetActivityState_v2_26.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_RequestPhoneCall_v2_27_Completed()
    local params, l0, l1;
    params = self:OnEnter_box_BroadcastMessage_11();
    l0 = self.box_RequestPhoneCall_v2_27;
    l1 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B40.domino|@KEY01_010_B40_Rings|460448068", "460448068", "KEY01_010_B40_Rings", "box_RequestPhoneCall_v2_27.Completed", "box_BroadcastMessage_11.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_RequestPhoneCall_v2_17_Completed()
    local params, l0, l1;
    params = self:OnEnter_box_RequestPhoneCall_v2_23();
    l0 = self.box_RequestPhoneCall_v2_17;
    l1 = self.box_RequestPhoneCall_v2_23;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B40.domino|@KEY01_010_B40_Rings|1453745057", "1453745057", "KEY01_010_B40_Rings", "box_RequestPhoneCall_v2_17.Completed", "box_RequestPhoneCall_v2_23.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_10_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Custom_Brick_Deliver_v5_18();
    l0 = self.box_Custom_Brick_Deliver_v5_18;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B40.domino|@KEY01_010_B40_Rings|1610629558", "1610629558", "KEY01_010_B40_Rings", "box_OutputOrder_v2_10.Out", "box_Custom_Brick_Deliver_v5_18.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_10_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_21();
    l0 = self.box_SpawnAI_21;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B40.domino|@KEY01_010_B40_Rings|1268652077", "1268652077", "KEY01_010_B40_Rings", "box_OutputOrder_v2_10.Out", "box_SpawnAI_21.Spawn", clone:GetLuaBox(), l0:GetLuaBox());
    -- Spawn
    l0:Exec(1, params);
end;

function export:f_box_MultipleOR_29_Out()
    local params, l0, l1;
    params = self:OnEnter_box_RequestPhoneCall_v2_30();
    l0 = self.box_MultipleOR_29;
    l1 = self.box_RequestPhoneCall_v2_30;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B40.domino|@KEY01_010_B40_Rings|860379964", "860379964", "KEY01_010_B40_Rings", "box_MultipleOR_29.Out", "box_RequestPhoneCall_v2_30.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_RequestPhoneCall_v2_35_Completed()
    local params, l0, l1;
    params = self:OnEnter_box_RequestPhoneCall_v2_36();
    l0 = self.box_RequestPhoneCall_v2_35;
    l1 = self.box_RequestPhoneCall_v2_36;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B40.domino|@KEY01_010_B40_Rings|496322587", "496322587", "KEY01_010_B40_Rings", "box_RequestPhoneCall_v2_35.Completed", "box_RequestPhoneCall_v2_36.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_Custom_Brick_Deliver_v5_3_Success()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_20();
    l0 = self.box_Custom_Brick_Deliver_v5_3;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B40.domino|@KEY01_010_B40_Rings|547794137", "547794137", "KEY01_010_B40_Rings", "box_Custom_Brick_Deliver_v5_3.Success", "box_OutputOrder_v2_20.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_TakeControl_Vehicle_Generic_1_Started()
    local l0, l1;
    self:OnExit_box_Brick_TakeControl_Vehicle_Generic_1_Started();
    l0 = self.box_Brick_TakeControl_Vehicle_Generic_1;
    l1 = self.box_MultipleOR_5;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B40.domino|@KEY01_010_B40_Rings|1113782576", "1113782576", "KEY01_010_B40_Rings", "box_Brick_TakeControl_Vehicle_Generic_1.Started", "box_MultipleOR_5.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Brick_TakeControl_Vehicle_Generic_1_Success()
    local l0, l1;
    self:OnExit_box_Brick_TakeControl_Vehicle_Generic_1_Success();
    l0 = self.box_Brick_TakeControl_Vehicle_Generic_1;
    l1 = self.box_MultipleOR_5;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B40.domino|@KEY01_010_B40_Rings|1757900076", "1757900076", "KEY01_010_B40_Rings", "box_Brick_TakeControl_Vehicle_Generic_1.Success", "box_MultipleOR_5.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_GetActivityState_v2_26_Active()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_29;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B40.domino|@KEY01_010_B40_Rings|1076408725", "1076408725", "KEY01_010_B40_Rings", "box_GetActivityState_v2_26.Active", "box_MultipleOR_29.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_GetActivityState_v2_26_Canceled()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_29;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B40.domino|@KEY01_010_B40_Rings|479306911", "479306911", "KEY01_010_B40_Rings", "box_GetActivityState_v2_26.Canceled", "box_MultipleOR_29.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 4);
end;

function export:f_box_GetActivityState_v2_26_Completed()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_RequestPhoneCall_v2_27();
    l0 = self.box_RequestPhoneCall_v2_27;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B40.domino|@KEY01_010_B40_Rings|1298117264", "1298117264", "KEY01_010_B40_Rings", "box_GetActivityState_v2_26.Completed", "box_RequestPhoneCall_v2_27.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
end;

function export:f_box_GetActivityState_v2_26_Failed()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_29;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B40.domino|@KEY01_010_B40_Rings|1188973513", "1188973513", "KEY01_010_B40_Rings", "box_GetActivityState_v2_26.Failed", "box_MultipleOR_29.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 3);
end;

function export:f_box_GetActivityState_v2_26_Inactive()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_29;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B40.domino|@KEY01_010_B40_Rings|1935825485", "1935825485", "KEY01_010_B40_Rings", "box_GetActivityState_v2_26.Inactive", "box_MultipleOR_29.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_GetActivityState_v2_26_Unavailable()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_29;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B40.domino|@KEY01_010_B40_Rings|1987360834", "1987360834", "KEY01_010_B40_Rings", "box_GetActivityState_v2_26.Unavailable", "box_MultipleOR_29.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Custom_Brick_Deliver_v5_14_Success()
    local params, l0, l1;
    params = self:OnEnter_box_Custom_Brick_Deliver_v5_24();
    l0 = self.box_Custom_Brick_Deliver_v5_14;
    l1 = self.box_Custom_Brick_Deliver_v5_24;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B40.domino|@KEY01_010_B40_Rings|927081707", "927081707", "KEY01_010_B40_Rings", "box_Custom_Brick_Deliver_v5_14.Success", "box_Custom_Brick_Deliver_v5_24.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_13_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Custom_Brick_Deliver_v5_25();
    l0 = self.box_Custom_Brick_Deliver_v5_25;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B40.domino|@KEY01_010_B40_Rings|1695493129", "1695493129", "KEY01_010_B40_Rings", "box_OutputOrder_v2_13.Out", "box_Custom_Brick_Deliver_v5_25.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_13_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetActivityState_v2_16();
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B40.domino|@KEY01_010_B40_Rings|56904577", "56904577", "KEY01_010_B40_Rings", "box_OutputOrder_v2_13.Out", "box_GetActivityState_v2_16.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_15_Out()
    local params, l0, l1;
    params = self:OnEnter_box_RequestPhoneCall_v2_9();
    l0 = self.box_MultipleOR_15;
    l1 = self.box_RequestPhoneCall_v2_9;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B40.domino|@KEY01_010_B40_Rings|968895314", "968895314", "KEY01_010_B40_Rings", "box_MultipleOR_15.Out", "box_RequestPhoneCall_v2_9.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_RequestPhoneCall_v2_36_Completed()
    local params, l0, l1;
    params = self:OnEnter_box_RequestPhoneCall_v2_38();
    l0 = self.box_RequestPhoneCall_v2_36;
    l1 = self.box_RequestPhoneCall_v2_38;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B40.domino|@KEY01_010_B40_Rings|100674393", "100674393", "KEY01_010_B40_Rings", "box_RequestPhoneCall_v2_36.Completed", "box_RequestPhoneCall_v2_38.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:OnEnter_box_RequestPhoneCall_v2_30()
    local params;
    DrawTextToScreen("Comment: Hey! This is Nick Rye. Who the hell are you and where do you think you’re taking my plane!? Goddamn Peggies -- Wait wait wait. Ain’t no Peggie dumb enough to pull a stunt like that… Shit. You’re that deputy I been hearin’ about, ain’t ya?", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'RequestPhoneCall_v2')-- Comment: Hey! This is Nick Rye. Who the hell are you and where do you think you’re taking my plane!? Goddamn Peggies -- Wait wait wait. Ain’t no Peggie dumb enough to pull a stunt like that… Shit. You’re that deputy I been hearin’ about, ain’t ya?");
    params = {
        -- Delay,
        [2] = 3,
        -- NoDeadair,
        [3] = false,
        -- Pawns,
        [4] = "#ED455357",
        -- SoundId,
        [5] = "1304764430",
    };
    return params;
end;

function export:OnEnter_box_Custom_Brick_Deliver_v5_12()
    local params;
    params = {
        -- eTargetMarker,
        [1] = "2098162277455800674",
        -- eTargetTrigger,
        [2] = "2102542056925758755",
        -- eVehicle,
        [3] = self.ePlayerVehicle,
        -- eVehicleMarker,
        [4] = "2097663611706043228",
        -- eVFX,
        [5] = "2098162277455800672",
        -- FailReason,
        [6] = {
            section = "Objectives",
            item = "KEY01_010_FAIL_PlaneDestroy",
            id = "501598",
        },
        -- ObjectiveID,
        [7] = {
            section = "Objectives",
            item = "KEY01_010_B40_GOAL_ReachNickHouse",
            id = "427665",
        },
    };
    return params;
end;

function export:OnEnter_box_BroadcastMessage_11()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_BroadcastMessage_11");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B40.domino|@KEY01_010_B40_Rings|361897033");
    l0:SetConnections({
    });
    params = {
        -- Message,
        [0] = "startmusic",
    };
    return params;
end;

function export:OnEnter_box_GetActivityState_v2_16()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetActivityState_v2_16");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B40.domino|@KEY01_010_B40_Rings|368936815");
    l0:SetConnections({
        -- Active,
        [0] = self.f_box_GetActivityState_v2_16_Active,
        -- Canceled,
        [1] = self.f_box_GetActivityState_v2_16_Canceled,
        -- Completed,
        [2] = self.f_box_GetActivityState_v2_16_Completed,
        -- Failed,
        [3] = self.f_box_GetActivityState_v2_16_Failed,
        -- Inactive,
        [4] = self.f_box_GetActivityState_v2_16_Inactive,
    });
    params = {
        -- activityDescriptorID,
        [0] = "9015195859830820",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_20()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_20");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B40.domino|@KEY01_010_B40_Rings|417701099");
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
                [0] = self.f_box_OutputOrder_v2_20_Out_0,
                [1] = self.f_box_OutputOrder_v2_20_Out_1,
                [2] = self.f_box_OutputOrder_v2_20_Out_2,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_RequestPhoneCall_v2_9()
    local params;
    DrawTextToScreen("Comment: Man, you’re either brave or stupid. Either way, you just saved my life. Hell you saved my whole family. Peggies attacked my place just as we were fixin’ to take off for good. Swiped my plane and left me to fight for my life. I’m damn near outta ammo.", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'RequestPhoneCall_v2')-- Comment: Man, you’re either brave or stupid. Either way, you just saved my life. Hell you saved my whole family. Peggies attacked my place just as we were fixin’ to take off for good. Swiped my plane and left me to fight for my life. I’m damn near outta ammo.");
    params = {
        -- Delay,
        [2] = 0,
        -- NoDeadair,
        [3] = false,
        -- Pawns,
        [4] = "#ED455357",
        -- SoundId,
        [5] = "3562507017",
    };
    return params;
end;

function export:OnEnter_box_RequestPhoneCall_v2_34()
    local params;
    DrawTextToScreen("Comment: Yeap, you'd a gone into a full on barrel roll by now if somethin' was wrong. Well, guess the cult's got SOME competent pilots.", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'RequestPhoneCall_v2')-- Comment: Yeap, you'd a gone into a full on barrel roll by now if somethin' was wrong. Well, guess the cult's got SOME competent pilots.");
    params = {
        -- Delay,
        [2] = 0,
        -- NoDeadair,
        [3] = false,
        -- Pawns,
        [4] = "#ED455357",
        -- SoundId,
        [5] = "1381082468",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_8()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_8");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B40.domino|@KEY01_010_B40_Rings|725715353");
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
                [0] = self.f_box_OutputOrder_v2_8_Out_0,
                [1] = self.f_box_OutputOrder_v2_8_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Custom_Brick_Deliver_v5_7()
    local params;
    params = {
        -- eTargetMarker,
        [1] = "2103579123923320827",
        -- eTargetTrigger,
        [2] = "2103579123923320823",
        -- eVehicle,
        [3] = self.ePlayerVehicle,
        -- eVehicleMarker,
        [4] = "2097663611706043228",
        -- eVFX,
        [5] = "2103579123921223667",
        -- FailReason,
        [6] = {
            section = "Objectives",
            item = "KEY01_010_FAIL_PlaneDestroy",
            id = "501598",
        },
        -- ObjectiveID,
        [7] = {
            section = "Objectives",
            item = "KEY01_010_B40_GOAL_ReachNickHouse",
            id = "427665",
        },
    };
    return params;
end;

function export:OnEnter_box_Custom_Brick_Deliver_v5_24()
    local params;
    params = {
        -- eTargetMarker,
        [1] = "2103178003153501464",
        -- eTargetTrigger,
        [2] = "2103178003157695772",
        -- eVehicle,
        [3] = self.ePlayerVehicle,
        -- eVehicleMarker,
        [4] = "2097663611706043228",
        -- eVFX,
        [5] = "2103178003159792926",
        -- FailReason,
        [6] = {
            section = "Objectives",
            item = "KEY01_010_FAIL_PlaneDestroy",
            id = "501598",
        },
        -- ObjectiveID,
        [7] = {
            section = "Objectives",
            item = "KEY01_010_B40_GOAL_ReachNickHouse",
            id = "427665",
        },
    };
    return params;
end;

function export:OnEnter_box_Custom_Brick_Deliver_v5_18()
    local params;
    DrawTextToScreen("Comment: You know, I shoulda figured everythin' would be alright. That plane's never let a single one of us Ryes down.", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'Custom_Brick_Deliver_v5')-- Comment: You know, I shoulda figured everythin' would be alright. That plane's never let a single one of us Ryes down.");
    params = {
        -- CallSoundID,
        [0] = "3400333049",
        -- eTargetMarker,
        [1] = "2102516518228141995",
        -- eTargetTrigger,
        [2] = "2102542110004675931",
        -- eVehicle,
        [3] = self.ePlayerVehicle,
        -- eVehicleMarker,
        [4] = "2097663611706043228",
        -- eVFX,
        [5] = "2102516518230239149",
        -- FailReason,
        [6] = {
            section = "Objectives",
            item = "KEY01_010_FAIL_PlaneDestroy",
            id = "501598",
        },
        -- ObjectiveID,
        [7] = {
            section = "Objectives",
            item = "KEY01_010_B40_GOAL_ReachNickHouse",
            id = "427665",
        },
    };
    return params;
end;

function export:OnEnter_box_Custom_Brick_Deliver_v5_19()
    local params;
    DrawTextToScreen("Comment: God damn. Breakin' into John's ranch of all places and makin' it out in one piece. Way to show those fuckers. They must'a been mystified.", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'Custom_Brick_Deliver_v5')-- Comment: God damn. Breakin' into John's ranch of all places and makin' it out in one piece. Way to show those fuckers. They must'a been mystified.");
    params = {
        -- CallSoundID,
        [0] = "1364994079",
        -- eTargetMarker,
        [1] = "2101134680798577460",
        -- eTargetTrigger,
        [2] = "2102542053826168095",
        -- eVehicle,
        [3] = self.ePlayerVehicle,
        -- eVehicleMarker,
        [4] = "2097663611706043228",
        -- eVFX,
        [5] = "2101134680802771770",
        -- FailReason,
        [6] = {
            section = "Objectives",
            item = "KEY01_010_FAIL_PlaneDestroy",
            id = "501598",
        },
        -- ObjectiveID,
        [7] = {
            section = "Objectives",
            item = "KEY01_010_B40_GOAL_ReachNickHouse",
            id = "427665",
        },
    };
    return params;
end;

function export:OnEnter_box_Custom_Brick_Deliver_v5_25()
    local params;
    params = {
        -- eTargetMarker,
        [1] = "2098163247724138999",
        -- eTargetTrigger,
        [2] = "2102532027180975367",
        -- eVehicle,
        [3] = self.ePlayerVehicle,
        -- eVehicleMarker,
        [4] = "2097663611706043228",
        -- eVFX,
        [5] = "2098163247724138997",
        -- FailReason,
        [6] = {
            section = "Objectives",
            item = "KEY01_010_FAIL_PlaneDestroy",
            id = "501598",
        },
        -- ObjectiveID,
        [7] = {
            section = "Objectives",
            item = "KEY01_010_B40_GOAL_ReachNickHouse",
            id = "427665",
        },
    };
    return params;
end;

function export:OnEnter_box_RequestPhoneCall_v2_23()
    local params;
    DrawTextToScreen("Comment: I'm gonna have you dip that left wing. That's the one that worries me. It's always acted up a bit.", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'RequestPhoneCall_v2')-- Comment: I'm gonna have you dip that left wing. That's the one that worries me. It's always acted up a bit.");
    params = {
        -- Delay,
        [2] = 0,
        -- NoDeadair,
        [3] = false,
        -- Pawns,
        [4] = "#ED455357",
        -- SoundId,
        [5] = "2935907834",
    };
    return params;
end;

function export:OnEnter_box_Custom_Brick_Deliver_v5_6()
    local params;
    params = {
        -- eTargetMarker,
        [1] = "2098242094094131519",
        -- eTargetTrigger,
        [2] = "2102542061197657383",
        -- eVehicle,
        [3] = self.ePlayerVehicle,
        -- eVehicleMarker,
        [4] = "2097663611706043228",
        -- eVFX,
        [5] = "2098242094094131521",
        -- FailReason,
        [6] = {
            section = "Objectives",
            item = "KEY01_010_FAIL_PlaneDestroy",
            id = "501598",
        },
        -- ObjectiveID,
        [7] = {
            section = "Objectives",
            item = "KEY01_010_B40_GOAL_ReachNickHouse",
            id = "427665",
        },
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_21()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2103373595402081744",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_39()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_39");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B40.domino|@KEY01_010_B40_Rings|1235835751");
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
                [0] = self.f_box_OutputOrder_v2_39_Out_0,
                [1] = self.f_box_OutputOrder_v2_39_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_31()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_31");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B40.domino|@KEY01_010_B40_Rings|1320488705");
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
                [0] = self.f_box_OutputOrder_v2_31_Out_0,
                [1] = self.f_box_OutputOrder_v2_31_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_RequestPhoneCall_v2_27()
    local params;
    DrawTextToScreen("Comment: Oorah, Deputy! I just heard on the peggie radio that some intruder made off with my plane! You need to get some distance. Just head north for now.", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'RequestPhoneCall_v2')-- Comment: Oorah, Deputy! I just heard on the peggie radio that some intruder made off with my plane! You need to get some distance. Just head north for now.");
    params = {
        -- Delay,
        [2] = 3,
        -- NoDeadair,
        [3] = false,
        -- Pawns,
        [4] = "#ED455357",
        -- SoundId,
        [5] = "3948447009",
    };
    return params;
end;

function export:OnEnter_box_RequestPhoneCall_v2_17()
    local params;
    DrawTextToScreen("Comment: That's it, you got this. Keep it steady!", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'RequestPhoneCall_v2')-- Comment: That's it, you got this. Keep it steady!");
    params = {
        -- Delay,
        [2] = 0,
        -- NoDeadair,
        [3] = false,
        -- Pawns,
        [4] = "#ED455357",
        -- SoundId,
        [5] = "2930905897",
    };
    return params;
end;

function export:OnEnter_box_RequestPhoneCall_v2_38()
    local params;
    DrawTextToScreen("Comment: Don't know what we would've done if we lost that plane.", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'RequestPhoneCall_v2')-- Comment: Don't know what we would've done if we lost that plane.");
    params = {
        -- Delay,
        [2] = 0,
        -- NoDeadair,
        [3] = false,
        -- Pawns,
        [4] = "#ED455357",
        -- SoundId,
        [5] = "1212050628",
    };
    return params;
end;

function export:OnEnter_box_BroadcastMessage_33()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_BroadcastMessage_33");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B40.domino|@KEY01_010_B40_Rings|1477766127");
    l0:SetConnections({
    });
    params = {
        -- Message,
        [0] = "startmusic",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_10()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_10");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B40.domino|@KEY01_010_B40_Rings|1487408167");
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

function export:OnEnter_box_RequestPhoneCall_v2_35()
    local params;
    DrawTextToScreen("Comment: Man, what I'd give to have seen the looks on their faces. Stupid Peggies.", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'RequestPhoneCall_v2')-- Comment: Man, what I'd give to have seen the looks on their faces. Stupid Peggies.");
    params = {
        -- Delay,
        [2] = 0,
        -- NoDeadair,
        [3] = false,
        -- Pawns,
        [4] = "#ED455357",
        -- SoundId,
        [5] = "2766084302",
    };
    return params;
end;

function export:OnEnter_box_Custom_Brick_Deliver_v5_3()
    local params;
    params = {
        -- eTargetMarker,
        [1] = "2098242030906941739",
        -- eTargetTrigger,
        [2] = "2102541955671065879",
        -- eVehicle,
        [3] = self.ePlayerVehicle,
        -- eVehicleMarker,
        [4] = "2097663611706043228",
        -- eVFX,
        [5] = "2098242030911136049",
        -- FailReason,
        [6] = {
            section = "Objectives",
            item = "KEY01_010_FAIL_PlaneDestroy",
            id = "501598",
        },
        -- ObjectiveID,
        [7] = {
            section = "Objectives",
            item = "KEY01_010_B40_GOAL_ReachNickHouse",
            id = "427665",
        },
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_2()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2103373690075911741",
    };
    return params;
end;

function export:OnEnter_box_Brick_TakeControl_Vehicle_Generic_1()
    local params;
    params = {
        -- aVehicleArchetype,
        [0] = "9015256522055681",
        -- bCompletePreviousObjective,
        [1] = false,
        -- hasObjective,
        [2] = false,
        -- o_Objective,
        [3] = {
            section = "BRICK_Steal_Vehicle",
            item = "BRICK_Steal_Vehicle_OBJ",
            id = "376562",
        },
    };
    return params;
end;

function export:OnEnter_box_GetActivityState_v2_26()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetActivityState_v2_26");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B40.domino|@KEY01_010_B40_Rings|1686865312");
    l0:SetConnections({
        -- Active,
        [0] = self.f_box_GetActivityState_v2_26_Active,
        -- Canceled,
        [1] = self.f_box_GetActivityState_v2_26_Canceled,
        -- Completed,
        [2] = self.f_box_GetActivityState_v2_26_Completed,
        -- Failed,
        [3] = self.f_box_GetActivityState_v2_26_Failed,
        -- Inactive,
        [4] = self.f_box_GetActivityState_v2_26_Inactive,
        -- Unavailable,
        [6] = self.f_box_GetActivityState_v2_26_Unavailable,
    });
    params = {
        -- activityDescriptorID,
        [0] = "9015195859830820",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_4()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2103387314439865349",
    };
    return params;
end;

function export:OnEnter_box_Custom_Brick_Deliver_v5_14()
    local params;
    params = {
        -- CallSoundID,
        [0] = "425657904",
        -- eTargetMarker,
        [1] = "2103177897815653645",
        -- eTargetTrigger,
        [2] = "2103177897817750801",
        -- eVehicle,
        [3] = self.ePlayerVehicle,
        -- eVehicleMarker,
        [4] = "2097663611706043228",
        -- eVFX,
        [5] = "2103177897819847955",
        -- FailReason,
        [6] = {
            section = "Objectives",
            item = "KEY01_010_FAIL_PlaneDestroy",
            id = "501598",
        },
        -- ObjectiveID,
        [7] = {
            section = "Objectives",
            item = "KEY01_010_B40_GOAL_ReachNickHouse",
            id = "427665",
        },
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_13()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_13");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B40.domino|@KEY01_010_B40_Rings|1916351860");
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

function export:OnEnter_box_RequestPhoneCall_v2_36()
    local params;
    DrawTextToScreen("Comment: That's all they do around here. Show up at your door like they did to me, and take whatever the hell they want.", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'RequestPhoneCall_v2')-- Comment: That's all they do around here. Show up at your door like they did to me, and take whatever the hell they want.");
    params = {
        -- Delay,
        [2] = 0,
        -- NoDeadair,
        [3] = false,
        -- Pawns,
        [4] = "#ED455357",
        -- SoundId,
        [5] = "3433979623",
    };
    return params;
end;

function export:OnEnter_box_RequestPhoneCall_v2_22()
    local params;
    DrawTextToScreen("Comment: Stay low here.", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'RequestPhoneCall_v2')-- Comment: Stay low here.");
    params = {
        -- Delay,
        [2] = 0,
        -- NoDeadair,
        [3] = false,
        -- Pawns,
        [4] = "#ED455357",
        -- SoundId,
        [5] = "2187237621",
    };
    return params;
end;

function export:OnExit_box_Brick_TakeControl_Vehicle_Generic_1_Started()
    local l0;
    l0 = self.box_Brick_TakeControl_Vehicle_Generic_1;
    self.ePlayerVehicle = l0:GetDataOutValue(0);
end;

function export:OnExit_box_Brick_TakeControl_Vehicle_Generic_1_Success()
    local l0;
    l0 = self.box_Brick_TakeControl_Vehicle_Generic_1;
    self.ePlayerVehicle = l0:GetDataOutValue(0);
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
	<DatasIn>
		<DataIn Name="IsReloaded" AnchorDynType="0" DataTypeID="bool" />
	</DatasIn>
	<DatasOut />
</DominoMetadata>
