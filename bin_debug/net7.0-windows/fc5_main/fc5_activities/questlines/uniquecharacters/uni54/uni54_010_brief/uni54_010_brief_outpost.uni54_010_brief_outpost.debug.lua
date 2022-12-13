LUAC�  -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc5_main/fc5_activities/questlines/uniquecharacters/uni54/uni54_010_brief/uni54_010_brief_outpost.domino
-- User graph: UNI54_010_Brief_Outpost
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
        cboxRes:RegisterBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityEnd.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityInitialized.lua");
        cboxRes:RegisterBox("Domino/System/Activity/GetActivityState_v2.lua");
        cboxRes:RegisterBox("Domino/System/CompareBoolean.lua");
        cboxRes:RegisterBox("Domino/System/MultipleAND_v2.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/OnceOnly_v3.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/Player/PhoneCallExclusivityModifier.lua");
        cboxRes:RegisterBox("Domino/System/Player/RequestPhoneCall_v2.lua");
        cboxRes:RegisterBox("Domino/System/SetBoolean_v2.lua");
        
        -- Load resources
        cboxRes:LoadResource([[2645656313.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1068209700.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3510543431.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1934777432.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3474970804.bnk]], "CSoundResource");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI54/uni54_010_brief/uni54_010_brief_Outpost.UNI54_010_Brief_Outpost.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/System/SetBoolean_v2.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "False",
            },
            [1] = {
                name = "FromBool",
            },
            [2] = {
                name = "Toggle",
            },
            [3] = {
                name = "True",
            },
        },
        controlInCount = 4,
        controlOut = {
            [0] = {
                name = "Out",
                delayed = false,
            },
        },
        controlOutCount = 1,
        dataIn = {
            [0] = {
                name = "Bool",
                type = "bool",
            },
        },
        dataInCount = 1,
        dataOut = {
            [0] = {
                name = "Target",
                type = "bool",
            },
        },
        dataOutCount = 1,
    };
end;

function export:Init(cbox)
    local l0;
    self._name = "UNI54_010_Brief_Outpost";
    self._elementPathId = "DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\uni54_010_brief\\uni54_010_brief_Outpost.domino|@UNI54_010_Brief_Outpost";
    self.HasOutpostBriefBeenDone = false;
    self.VirgilIsDead = false;
    self.box_MultipleOR_34 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_34;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_34");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\uni54_010_brief\\uni54_010_brief_Outpost.domino|@UNI54_010_Brief_Outpost|185392767");
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
        [0] = self.f_box_MultipleOR_34_Out,
    });
    self.box_RequestPhoneCall_v2_24 = cbox:CreateBox("Domino/System/Player/RequestPhoneCall_v2.lua");
    l0 = self.box_RequestPhoneCall_v2_24;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RequestPhoneCall_v2_24");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\uni54_010_brief\\uni54_010_brief_Outpost.domino|@UNI54_010_Brief_Outpost|238666347");
    l0:SetConnections({
        -- Canceled,
        [0] = self.f_box_RequestPhoneCall_v2_24_Canceled,
        -- Completed,
        [1] = self.f_box_RequestPhoneCall_v2_24_Completed,
        -- Failed,
        [2] = self.f_box_RequestPhoneCall_v2_24_Failed,
    });
    self.box_PhoneCallExclusivityModifier_16 = cbox:CreateBox("Domino/System/Player/PhoneCallExclusivityModifier.lua");
    l0 = self.box_PhoneCallExclusivityModifier_16;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PhoneCallExclusivityModifier_16");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\uni54_010_brief\\uni54_010_brief_Outpost.domino|@UNI54_010_Brief_Outpost|270172475");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_PhoneCallExclusivityModifier_16_Enabled,
    });
    self.box_ActivityAcknowledgeGate_2 = cbox:CreateBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
    l0 = self.box_ActivityAcknowledgeGate_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityAcknowledgeGate_2");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\uni54_010_brief\\uni54_010_brief_Outpost.domino|@UNI54_010_Brief_Outpost|350131718");
    l0:SetConnections({
        -- Acknowledged,
        [0] = self.f_box_ActivityAcknowledgeGate_2_Acknowledged,
        -- Reloaded,
        [1] = self.f_box_ActivityAcknowledgeGate_2_Reloaded,
    });
    self.box_PhoneCallExclusivityModifier_17 = cbox:CreateBox("Domino/System/Player/PhoneCallExclusivityModifier.lua");
    l0 = self.box_PhoneCallExclusivityModifier_17;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PhoneCallExclusivityModifier_17");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\uni54_010_brief\\uni54_010_brief_Outpost.domino|@UNI54_010_Brief_Outpost|385352766");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_PhoneCallExclusivityModifier_17_Disabled,
    });
    self.box_RequestPhoneCall_v2_12 = cbox:CreateBox("Domino/System/Player/RequestPhoneCall_v2.lua");
    l0 = self.box_RequestPhoneCall_v2_12;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RequestPhoneCall_v2_12");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\uni54_010_brief\\uni54_010_brief_Outpost.domino|@UNI54_010_Brief_Outpost|517345035");
    l0:SetConnections({
        -- Canceled,
        [0] = self.f_box_RequestPhoneCall_v2_12_Canceled,
        -- Completed,
        [1] = self.f_box_RequestPhoneCall_v2_12_Completed,
        -- Failed,
        [2] = self.f_box_RequestPhoneCall_v2_12_Failed,
    });
    self.box_RequestPhoneCall_v2_4 = cbox:CreateBox("Domino/System/Player/RequestPhoneCall_v2.lua");
    l0 = self.box_RequestPhoneCall_v2_4;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RequestPhoneCall_v2_4");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\uni54_010_brief\\uni54_010_brief_Outpost.domino|@UNI54_010_Brief_Outpost|652694673");
    l0:SetConnections({
        -- Canceled,
        [0] = self.f_box_RequestPhoneCall_v2_4_Canceled,
        -- Completed,
        [1] = self.f_box_RequestPhoneCall_v2_4_Completed,
        -- Failed,
        [2] = self.f_box_RequestPhoneCall_v2_4_Failed,
    });
    self.box_MultipleOR_7 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_7;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_7");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\uni54_010_brief\\uni54_010_brief_Outpost.domino|@UNI54_010_Brief_Outpost|681085625");
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
        [0] = self.f_box_MultipleOR_7_Out,
    });
    self.box_MultipleOR_35 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_35;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_35");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\uni54_010_brief\\uni54_010_brief_Outpost.domino|@UNI54_010_Brief_Outpost|688303142");
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
        [0] = self.f_box_MultipleOR_35_Out,
    });
    self.box_RequestPhoneCall_v2_36 = cbox:CreateBox("Domino/System/Player/RequestPhoneCall_v2.lua");
    l0 = self.box_RequestPhoneCall_v2_36;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RequestPhoneCall_v2_36");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\uni54_010_brief\\uni54_010_brief_Outpost.domino|@UNI54_010_Brief_Outpost|919463731");
    l0:SetConnections({
        -- Canceled,
        [0] = self.f_box_RequestPhoneCall_v2_36_Canceled,
        -- Completed,
        [1] = self.f_box_RequestPhoneCall_v2_36_Completed,
        -- Failed,
        [2] = self.f_box_RequestPhoneCall_v2_36_Failed,
    });
    self.box_MultipleOR_19 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_19;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_19");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\uni54_010_brief\\uni54_010_brief_Outpost.domino|@UNI54_010_Brief_Outpost|939296896");
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
    self.box_MultipleOR_11 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_11;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_11");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\uni54_010_brief\\uni54_010_brief_Outpost.domino|@UNI54_010_Brief_Outpost|1063416725");
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
        [0] = self.f_box_MultipleOR_11_Out,
    });
    self.box_MultipleOR_6 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_6;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_6");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\uni54_010_brief\\uni54_010_brief_Outpost.domino|@UNI54_010_Brief_Outpost|1064434350");
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
        [0] = self.f_box_MultipleOR_6_Out,
    });
    self.box_MultipleAND_v2_18 = cbox:CreateBox("Domino/System/MultipleAND_v2.lua");
    l0 = self.box_MultipleAND_v2_18;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleAND_v2_18");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\uni54_010_brief\\uni54_010_brief_Outpost.domino|@UNI54_010_Brief_Outpost|1434313056");
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
        [0] = self.f_box_MultipleAND_v2_18_Out,
    });
    self.box_OnceOnly_v3_37 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_37;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_37");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\uni54_010_brief\\uni54_010_brief_Outpost.domino|@UNI54_010_Brief_Outpost|1571372091");
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
                [0] = self.f_box_OnceOnly_v3_37_Out_0,
            },
            count = 2,
        },
    });
    self.box_MultipleOR_1 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_1");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\uni54_010_brief\\uni54_010_brief_Outpost.domino|@UNI54_010_Brief_Outpost|1574812724");
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
        [0] = self.f_box_MultipleOR_1_Out,
    });
    self.box_ActivityInitialized_3 = cbox:CreateBox("Domino/System/Activity/ActivityInitialized.lua");
    l0 = self.box_ActivityInitialized_3;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityInitialized_3");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\uni54_010_brief\\uni54_010_brief_Outpost.domino|@UNI54_010_Brief_Outpost|1584327927");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ActivityInitialized_3_Out,
    });
    self.box_MultipleOR_14 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_14;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_14");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\uni54_010_brief\\uni54_010_brief_Outpost.domino|@UNI54_010_Brief_Outpost|1639847740");
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
        [0] = self.f_box_MultipleOR_14_Out,
    });
    self.box_RequestPhoneCall_v2_28 = cbox:CreateBox("Domino/System/Player/RequestPhoneCall_v2.lua");
    l0 = self.box_RequestPhoneCall_v2_28;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RequestPhoneCall_v2_28");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\uni54_010_brief\\uni54_010_brief_Outpost.domino|@UNI54_010_Brief_Outpost|1789805347");
    l0:SetConnections({
        -- Canceled,
        [0] = self.f_box_RequestPhoneCall_v2_28_Canceled,
        -- Completed,
        [1] = self.f_box_RequestPhoneCall_v2_28_Completed,
        -- Failed,
        [2] = self.f_box_RequestPhoneCall_v2_28_Failed,
    });
    self.box_MultipleOR_15 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_15;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_15");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\uni54_010_brief\\uni54_010_brief_Outpost.domino|@UNI54_010_Brief_Outpost|1843651612");
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
        [0] = self.f_box_MultipleOR_15_Out,
    });
    self.box_MultipleOR_9 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_9;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_9");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\uni54_010_brief\\uni54_010_brief_Outpost.domino|@UNI54_010_Brief_Outpost|1878499113");
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
        [0] = self.f_box_MultipleOR_9_Out,
    });
    self.box_MultipleOR_25 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_25;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_25");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\uni54_010_brief\\uni54_010_brief_Outpost.domino|@UNI54_010_Brief_Outpost|1901017095");
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
        [0] = self.f_box_MultipleOR_25_Out,
    });
end;

function export:In()
    local l0;
    l0 = self.box_ActivityAcknowledgeGate_2;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\uni54_010_brief\\uni54_010_brief_Outpost.domino|@UNI54_010_Brief_Outpost|149394217", "149394217", "UNI54_010_Brief_Outpost", "In", "box_ActivityAcknowledgeGate_2.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:f_box_Compare_Boolean_31_A_is_False()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_RequestPhoneCall_v2_36();
    l0 = self.box_RequestPhoneCall_v2_36;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\uni54_010_brief\\uni54_010_brief_Outpost.domino|@UNI54_010_Brief_Outpost|879345098", "879345098", "UNI54_010_Brief_Outpost", "box_Compare_Boolean_31.A_is_False", "box_RequestPhoneCall_v2_36.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
end;

function export:f_box_Compare_Boolean_31_A_is_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_RequestPhoneCall_v2_28();
    l0 = self.box_RequestPhoneCall_v2_28;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\uni54_010_brief\\uni54_010_brief_Outpost.domino|@UNI54_010_Brief_Outpost|1411520687", "1411520687", "UNI54_010_Brief_Outpost", "box_Compare_Boolean_31.A_is_True", "box_RequestPhoneCall_v2_28.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
end;

function export:f_box_MultipleOR_34_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_34;
    l1 = self.box_MultipleOR_9;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\uni54_010_brief\\uni54_010_brief_Outpost.domino|@UNI54_010_Brief_Outpost|908814448", "908814448", "UNI54_010_Brief_Outpost", "box_MultipleOR_34.Out", "box_MultipleOR_9.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 4);
end;

function export:f_box_RequestPhoneCall_v2_24_Canceled()
    local l0, l1;
    l0 = self.box_RequestPhoneCall_v2_24;
    l1 = self.box_MultipleOR_15;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\uni54_010_brief\\uni54_010_brief_Outpost.domino|@UNI54_010_Brief_Outpost|1127230303", "1127230303", "UNI54_010_Brief_Outpost", "box_RequestPhoneCall_v2_24.Canceled", "box_MultipleOR_15.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_RequestPhoneCall_v2_24_Completed()
    local l0, l1;
    l0 = self.box_RequestPhoneCall_v2_24;
    l1 = self.box_MultipleOR_15;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\uni54_010_brief\\uni54_010_brief_Outpost.domino|@UNI54_010_Brief_Outpost|1867159455", "1867159455", "UNI54_010_Brief_Outpost", "box_RequestPhoneCall_v2_24.Completed", "box_MultipleOR_15.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_RequestPhoneCall_v2_24_Failed()
    local l0, l1;
    l0 = self.box_RequestPhoneCall_v2_24;
    l1 = self.box_MultipleOR_15;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\uni54_010_brief\\uni54_010_brief_Outpost.domino|@UNI54_010_Brief_Outpost|984402965", "984402965", "UNI54_010_Brief_Outpost", "box_RequestPhoneCall_v2_24.Failed", "box_MultipleOR_15.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_PhoneCallExclusivityModifier_16_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_GetActivityState_v2_10();
    l0 = self.box_PhoneCallExclusivityModifier_16;
    l1 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\uni54_010_brief\\uni54_010_brief_Outpost.domino|@UNI54_010_Brief_Outpost|1966121029", "1966121029", "UNI54_010_Brief_Outpost", "box_PhoneCallExclusivityModifier_16.Enabled", "box_GetActivityState_v2_10.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ActivityAcknowledgeGate_2_Acknowledged()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_2;
    l1 = self.box_MultipleOR_1;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\uni54_010_brief\\uni54_010_brief_Outpost.domino|@UNI54_010_Brief_Outpost|2121464338", "2121464338", "UNI54_010_Brief_Outpost", "box_ActivityAcknowledgeGate_2.Acknowledged", "box_MultipleOR_1.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ActivityAcknowledgeGate_2_Reloaded()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_2;
    l1 = self.box_MultipleOR_1;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\uni54_010_brief\\uni54_010_brief_Outpost.domino|@UNI54_010_Brief_Outpost|442617891", "442617891", "UNI54_010_Brief_Outpost", "box_ActivityAcknowledgeGate_2.Reloaded", "box_MultipleOR_1.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_SetBoolean_v2_29_Out()
    local l0;
    self:OnExit_box_SetBoolean_v2_29_Out();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_19;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\uni54_010_brief\\uni54_010_brief_Outpost.domino|@UNI54_010_Brief_Outpost|834772365", "834772365", "UNI54_010_Brief_Outpost", "box_SetBoolean_v2_29.Out", "box_MultipleOR_19.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_PhoneCallExclusivityModifier_17_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_30();
    l0 = self.box_PhoneCallExclusivityModifier_17;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\uni54_010_brief\\uni54_010_brief_Outpost.domino|@UNI54_010_Brief_Outpost|1206299380", "1206299380", "UNI54_010_Brief_Outpost", "box_PhoneCallExclusivityModifier_17.Disabled", "box_OutputOrder_v2_30.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Compare_Boolean_32_A_is_False()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_RequestPhoneCall_v2_24();
    l0 = self.box_RequestPhoneCall_v2_24;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\uni54_010_brief\\uni54_010_brief_Outpost.domino|@UNI54_010_Brief_Outpost|756544805", "756544805", "UNI54_010_Brief_Outpost", "box_Compare_Boolean_32.A_is_False", "box_RequestPhoneCall_v2_24.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
end;

function export:f_box_Compare_Boolean_32_A_is_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_RequestPhoneCall_v2_4();
    l0 = self.box_RequestPhoneCall_v2_4;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\uni54_010_brief\\uni54_010_brief_Outpost.domino|@UNI54_010_Brief_Outpost|1582375531", "1582375531", "UNI54_010_Brief_Outpost", "box_Compare_Boolean_32.A_is_True", "box_RequestPhoneCall_v2_4.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
end;

function export:f_box_RequestPhoneCall_v2_12_Canceled()
    local l0, l1;
    l0 = self.box_RequestPhoneCall_v2_12;
    l1 = self.box_MultipleOR_35;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\uni54_010_brief\\uni54_010_brief_Outpost.domino|@UNI54_010_Brief_Outpost|1392571283", "1392571283", "UNI54_010_Brief_Outpost", "box_RequestPhoneCall_v2_12.Canceled", "box_MultipleOR_35.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_RequestPhoneCall_v2_12_Completed()
    local l0, l1;
    l0 = self.box_RequestPhoneCall_v2_12;
    l1 = self.box_MultipleOR_35;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\uni54_010_brief\\uni54_010_brief_Outpost.domino|@UNI54_010_Brief_Outpost|1167609820", "1167609820", "UNI54_010_Brief_Outpost", "box_RequestPhoneCall_v2_12.Completed", "box_MultipleOR_35.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_RequestPhoneCall_v2_12_Failed()
    local l0, l1;
    l0 = self.box_RequestPhoneCall_v2_12;
    l1 = self.box_MultipleOR_35;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\uni54_010_brief\\uni54_010_brief_Outpost.domino|@UNI54_010_Brief_Outpost|1362140620", "1362140620", "UNI54_010_Brief_Outpost", "box_RequestPhoneCall_v2_12.Failed", "box_MultipleOR_35.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_GetActivityState_v2_22_Active()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_25;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\uni54_010_brief\\uni54_010_brief_Outpost.domino|@UNI54_010_Brief_Outpost|1058185358", "1058185358", "UNI54_010_Brief_Outpost", "box_GetActivityState_v2_22.Active", "box_MultipleOR_25.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_GetActivityState_v2_22_Completed()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_18();
    l0 = self.box_MultipleAND_v2_18;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\uni54_010_brief\\uni54_010_brief_Outpost.domino|@UNI54_010_Brief_Outpost|1379503798", "1379503798", "UNI54_010_Brief_Outpost", "box_GetActivityState_v2_22.Completed", "box_MultipleAND_v2_18.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 0);
end;

function export:f_box_RequestPhoneCall_v2_4_Canceled()
    local l0, l1;
    l0 = self.box_RequestPhoneCall_v2_4;
    l1 = self.box_MultipleOR_6;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\uni54_010_brief\\uni54_010_brief_Outpost.domino|@UNI54_010_Brief_Outpost|995390684", "995390684", "UNI54_010_Brief_Outpost", "box_RequestPhoneCall_v2_4.Canceled", "box_MultipleOR_6.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_RequestPhoneCall_v2_4_Completed()
    local l0, l1;
    l0 = self.box_RequestPhoneCall_v2_4;
    l1 = self.box_MultipleOR_6;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\uni54_010_brief\\uni54_010_brief_Outpost.domino|@UNI54_010_Brief_Outpost|293906422", "293906422", "UNI54_010_Brief_Outpost", "box_RequestPhoneCall_v2_4.Completed", "box_MultipleOR_6.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_RequestPhoneCall_v2_4_Failed()
    local l0, l1;
    l0 = self.box_RequestPhoneCall_v2_4;
    l1 = self.box_MultipleOR_6;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\uni54_010_brief\\uni54_010_brief_Outpost.domino|@UNI54_010_Brief_Outpost|1227106854", "1227106854", "UNI54_010_Brief_Outpost", "box_RequestPhoneCall_v2_4.Failed", "box_MultipleOR_6.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_23_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetActivityState_v2_22();
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\uni54_010_brief\\uni54_010_brief_Outpost.domino|@UNI54_010_Brief_Outpost|1436507114", "1436507114", "UNI54_010_Brief_Outpost", "box_OutputOrder_v2_23.Out", "box_GetActivityState_v2_22.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_23_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetActivityState_v2_20();
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\uni54_010_brief\\uni54_010_brief_Outpost.domino|@UNI54_010_Brief_Outpost|1900539077", "1900539077", "UNI54_010_Brief_Outpost", "box_OutputOrder_v2_23.Out", "box_GetActivityState_v2_20.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_23_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetActivityState_v2_21();
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\uni54_010_brief\\uni54_010_brief_Outpost.domino|@UNI54_010_Brief_Outpost|150843384", "150843384", "UNI54_010_Brief_Outpost", "box_OutputOrder_v2_23.Out", "box_GetActivityState_v2_21.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_7_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_7;
    l1 = self.box_MultipleOR_9;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\uni54_010_brief\\uni54_010_brief_Outpost.domino|@UNI54_010_Brief_Outpost|278878814", "278878814", "UNI54_010_Brief_Outpost", "box_MultipleOR_7.Out", "box_MultipleOR_9.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 3);
end;

function export:f_box_MultipleOR_35_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_35;
    l1 = self.box_MultipleOR_9;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\uni54_010_brief\\uni54_010_brief_Outpost.domino|@UNI54_010_Brief_Outpost|1139750427", "1139750427", "UNI54_010_Brief_Outpost", "box_MultipleOR_35.Out", "box_MultipleOR_9.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_RequestPhoneCall_v2_36_Canceled()
    local l0, l1;
    l0 = self.box_RequestPhoneCall_v2_36;
    l1 = self.box_MultipleOR_34;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\uni54_010_brief\\uni54_010_brief_Outpost.domino|@UNI54_010_Brief_Outpost|1274577304", "1274577304", "UNI54_010_Brief_Outpost", "box_RequestPhoneCall_v2_36.Canceled", "box_MultipleOR_34.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_RequestPhoneCall_v2_36_Completed()
    local l0, l1;
    l0 = self.box_RequestPhoneCall_v2_36;
    l1 = self.box_MultipleOR_34;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\uni54_010_brief\\uni54_010_brief_Outpost.domino|@UNI54_010_Brief_Outpost|1677316431", "1677316431", "UNI54_010_Brief_Outpost", "box_RequestPhoneCall_v2_36.Completed", "box_MultipleOR_34.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_RequestPhoneCall_v2_36_Failed()
    local l0, l1;
    l0 = self.box_RequestPhoneCall_v2_36;
    l1 = self.box_MultipleOR_34;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\uni54_010_brief\\uni54_010_brief_Outpost.domino|@UNI54_010_Brief_Outpost|974740762", "974740762", "UNI54_010_Brief_Outpost", "box_RequestPhoneCall_v2_36.Failed", "box_MultipleOR_34.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_MultipleOR_19_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_23();
    l0 = self.box_MultipleOR_19;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\uni54_010_brief\\uni54_010_brief_Outpost.domino|@UNI54_010_Brief_Outpost|6480288", "6480288", "UNI54_010_Brief_Outpost", "box_MultipleOR_19.Out", "box_OutputOrder_v2_23.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_11_Out()
    local params, l0, l1;
    params = self:OnEnter_box_GetActivityState_v2_13();
    l0 = self.box_MultipleOR_11;
    l1 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\uni54_010_brief\\uni54_010_brief_Outpost.domino|@UNI54_010_Brief_Outpost|118058562", "118058562", "UNI54_010_Brief_Outpost", "box_MultipleOR_11.Out", "box_GetActivityState_v2_13.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_6_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_6;
    l1 = self.box_MultipleOR_9;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\uni54_010_brief\\uni54_010_brief_Outpost.domino|@UNI54_010_Brief_Outpost|1676771106", "1676771106", "UNI54_010_Brief_Outpost", "box_MultipleOR_6.Out", "box_MultipleOR_9.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_MultipleAND_v2_18_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Boolean_32();
    l0 = self.box_MultipleAND_v2_18;
    l1 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\uni54_010_brief\\uni54_010_brief_Outpost.domino|@UNI54_010_Brief_Outpost|941245289", "941245289", "UNI54_010_Brief_Outpost", "box_MultipleAND_v2_18.Out", "box_Compare_Boolean_32.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SetBoolean_v2_26_Out()
    self:OnExit_box_SetBoolean_v2_26_Out();
end;

function export:f_box_OnceOnly_v3_37_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Boolean_31();
    l0 = self.box_OnceOnly_v3_37;
    l1 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\uni54_010_brief\\uni54_010_brief_Outpost.domino|@UNI54_010_Brief_Outpost|581025240", "581025240", "UNI54_010_Brief_Outpost", "box_OnceOnly_v3_37.Out", "box_Compare_Boolean_31.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_1_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_1;
    l1 = self.box_ActivityInitialized_3;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\uni54_010_brief\\uni54_010_brief_Outpost.domino|@UNI54_010_Brief_Outpost|1781349199", "1781349199", "UNI54_010_Brief_Outpost", "box_MultipleOR_1.Out", "box_ActivityInitialized_3.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, {
    });
end;

function export:f_box_ActivityInitialized_3_Out()
    local l0, l1;
    l0 = self.box_ActivityInitialized_3;
    l1 = self.box_PhoneCallExclusivityModifier_16;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\uni54_010_brief\\uni54_010_brief_Outpost.domino|@UNI54_010_Brief_Outpost|865325896", "865325896", "UNI54_010_Brief_Outpost", "box_ActivityInitialized_3.Out", "box_PhoneCallExclusivityModifier_16.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, {
    });
end;

function export:f_box_GetActivityState_v2_21_Active()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_25;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\uni54_010_brief\\uni54_010_brief_Outpost.domino|@UNI54_010_Brief_Outpost|1262042135", "1262042135", "UNI54_010_Brief_Outpost", "box_GetActivityState_v2_21.Active", "box_MultipleOR_25.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_GetActivityState_v2_21_Completed()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_18();
    l0 = self.box_MultipleAND_v2_18;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\uni54_010_brief\\uni54_010_brief_Outpost.domino|@UNI54_010_Brief_Outpost|1082238526", "1082238526", "UNI54_010_Brief_Outpost", "box_GetActivityState_v2_21.Completed", "box_MultipleAND_v2_18.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 2);
end;

function export:f_box_MultipleOR_14_Out()
    local params, l0, l1;
    params = self:OnEnter_box_RequestPhoneCall_v2_12();
    l0 = self.box_MultipleOR_14;
    l1 = self.box_RequestPhoneCall_v2_12;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\uni54_010_brief\\uni54_010_brief_Outpost.domino|@UNI54_010_Brief_Outpost|694926358", "694926358", "UNI54_010_Brief_Outpost", "box_MultipleOR_14.Out", "box_RequestPhoneCall_v2_12.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_GetActivityState_v2_10_Active()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_11;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\uni54_010_brief\\uni54_010_brief_Outpost.domino|@UNI54_010_Brief_Outpost|1912867271", "1912867271", "UNI54_010_Brief_Outpost", "box_GetActivityState_v2_10.Active", "box_MultipleOR_11.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_GetActivityState_v2_10_Completed()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetBoolean_v2_29();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\uni54_010_brief\\uni54_010_brief_Outpost.domino|@UNI54_010_Brief_Outpost|1077072012", "1077072012", "UNI54_010_Brief_Outpost", "box_GetActivityState_v2_10.Completed", "box_SetBoolean_v2_29.True", clone:GetLuaBox(), l0:GetLuaBox());
    -- True
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GetActivityState_v2_10_Inactive()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_11;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\uni54_010_brief\\uni54_010_brief_Outpost.domino|@UNI54_010_Brief_Outpost|1327089264", "1327089264", "UNI54_010_Brief_Outpost", "box_GetActivityState_v2_10.Inactive", "box_MultipleOR_11.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_GetActivityState_v2_10_Unavailable()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_11;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\uni54_010_brief\\uni54_010_brief_Outpost.domino|@UNI54_010_Brief_Outpost|1833944653", "1833944653", "UNI54_010_Brief_Outpost", "box_GetActivityState_v2_10.Unavailable", "box_MultipleOR_11.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_RequestPhoneCall_v2_28_Canceled()
    local l0, l1;
    l0 = self.box_RequestPhoneCall_v2_28;
    l1 = self.box_MultipleOR_7;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\uni54_010_brief\\uni54_010_brief_Outpost.domino|@UNI54_010_Brief_Outpost|430667926", "430667926", "UNI54_010_Brief_Outpost", "box_RequestPhoneCall_v2_28.Canceled", "box_MultipleOR_7.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_RequestPhoneCall_v2_28_Completed()
    local l0, l1;
    l0 = self.box_RequestPhoneCall_v2_28;
    l1 = self.box_MultipleOR_7;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\uni54_010_brief\\uni54_010_brief_Outpost.domino|@UNI54_010_Brief_Outpost|360312510", "360312510", "UNI54_010_Brief_Outpost", "box_RequestPhoneCall_v2_28.Completed", "box_MultipleOR_7.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_RequestPhoneCall_v2_28_Failed()
    local l0, l1;
    l0 = self.box_RequestPhoneCall_v2_28;
    l1 = self.box_MultipleOR_7;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\uni54_010_brief\\uni54_010_brief_Outpost.domino|@UNI54_010_Brief_Outpost|175443913", "175443913", "UNI54_010_Brief_Outpost", "box_RequestPhoneCall_v2_28.Failed", "box_MultipleOR_7.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_30_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetBoolean_v2_26();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\uni54_010_brief\\uni54_010_brief_Outpost.domino|@UNI54_010_Brief_Outpost|64557753", "64557753", "UNI54_010_Brief_Outpost", "box_OutputOrder_v2_30.Out", "box_SetBoolean_v2_26.True", clone:GetLuaBox(), l0:GetLuaBox());
    -- True
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_30_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityEnd_5();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\uni54_010_brief\\uni54_010_brief_Outpost.domino|@UNI54_010_Brief_Outpost|1662410036", "1662410036", "UNI54_010_Brief_Outpost", "box_OutputOrder_v2_30.Out", "box_ActivityEnd_5.EndHardSave", clone:GetLuaBox(), l0:GetLuaBox());
    -- EndHardSave
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_15_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_15;
    l1 = self.box_MultipleOR_9;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\uni54_010_brief\\uni54_010_brief_Outpost.domino|@UNI54_010_Brief_Outpost|637173525", "637173525", "UNI54_010_Brief_Outpost", "box_MultipleOR_15.Out", "box_MultipleOR_9.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_MultipleOR_9_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_9;
    l1 = self.box_PhoneCallExclusivityModifier_17;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\uni54_010_brief\\uni54_010_brief_Outpost.domino|@UNI54_010_Brief_Outpost|1722794263", "1722794263", "UNI54_010_Brief_Outpost", "box_MultipleOR_9.Out", "box_PhoneCallExclusivityModifier_17.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, {
    });
end;

function export:f_box_MultipleOR_25_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_25;
    l1 = self.box_OnceOnly_v3_37;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\uni54_010_brief\\uni54_010_brief_Outpost.domino|@UNI54_010_Brief_Outpost|1246079313", "1246079313", "UNI54_010_Brief_Outpost", "box_MultipleOR_25.Out", "box_OnceOnly_v3_37.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_GetActivityState_v2_13_Active()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_14;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\uni54_010_brief\\uni54_010_brief_Outpost.domino|@UNI54_010_Brief_Outpost|254302820", "254302820", "UNI54_010_Brief_Outpost", "box_GetActivityState_v2_13.Active", "box_MultipleOR_14.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_GetActivityState_v2_13_Completed()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_19;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\uni54_010_brief\\uni54_010_brief_Outpost.domino|@UNI54_010_Brief_Outpost|1709824824", "1709824824", "UNI54_010_Brief_Outpost", "box_GetActivityState_v2_13.Completed", "box_MultipleOR_19.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_GetActivityState_v2_13_Inactive()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_14;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\uni54_010_brief\\uni54_010_brief_Outpost.domino|@UNI54_010_Brief_Outpost|1635328077", "1635328077", "UNI54_010_Brief_Outpost", "box_GetActivityState_v2_13.Inactive", "box_MultipleOR_14.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_GetActivityState_v2_13_Unavailable()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_14;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\uni54_010_brief\\uni54_010_brief_Outpost.domino|@UNI54_010_Brief_Outpost|159989436", "159989436", "UNI54_010_Brief_Outpost", "box_GetActivityState_v2_13.Unavailable", "box_MultipleOR_14.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_GetActivityState_v2_20_Active()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_25;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\uni54_010_brief\\uni54_010_brief_Outpost.domino|@UNI54_010_Brief_Outpost|1507940171", "1507940171", "UNI54_010_Brief_Outpost", "box_GetActivityState_v2_20.Active", "box_MultipleOR_25.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_GetActivityState_v2_20_Completed()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_18();
    l0 = self.box_MultipleAND_v2_18;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\uni54_010_brief\\uni54_010_brief_Outpost.domino|@UNI54_010_Brief_Outpost|325724351", "325724351", "UNI54_010_Brief_Outpost", "box_GetActivityState_v2_20.Completed", "box_MultipleAND_v2_18.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 1);
end;

function export:OnEnter_box_Compare_Boolean_31()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_31");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\uni54_010_brief\\uni54_010_brief_Outpost.domino|@UNI54_010_Brief_Outpost|138428866");
    l0:SetConnections({
        -- A_is_False,
        [1] = self.f_box_Compare_Boolean_31_A_is_False,
        -- A_is_True,
        [2] = self.f_box_Compare_Boolean_31_A_is_True,
    });
    params = {
        -- A,
        [0] = self.VirgilIsDead,
    };
    return params;
end;

function export:OnEnter_box_RequestPhoneCall_v2_24()
    local params;
    DrawTextToScreen("Comment: Virgil Alive / No brief / Fields Burnt", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'RequestPhoneCall_v2')-- Comment: Virgil Alive / No brief / Fields Burnt");
    params = {
        -- Delay,
        [2] = 0,
        -- NoDeadair,
        [3] = false,
        -- Pawns,
        [4] = "#ED455357",
        -- SoundId,
        [5] = "3474970804",
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_29()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_29");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\uni54_010_brief\\uni54_010_brief_Outpost.domino|@UNI54_010_Brief_Outpost|357226600");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_29_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_32()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_32");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\uni54_010_brief\\uni54_010_brief_Outpost.domino|@UNI54_010_Brief_Outpost|451462204");
    l0:SetConnections({
        -- A_is_False,
        [1] = self.f_box_Compare_Boolean_32_A_is_False,
        -- A_is_True,
        [2] = self.f_box_Compare_Boolean_32_A_is_True,
    });
    params = {
        -- A,
        [0] = self.VirgilIsDead,
    };
    return params;
end;

function export:OnEnter_box_RequestPhoneCall_v2_12()
    local params;
    DrawTextToScreen("Comment: Virgil Alive / Virgil Unknown", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'RequestPhoneCall_v2')-- Comment: Virgil Alive / Virgil Unknown");
    params = {
        -- Delay,
        [2] = 0,
        -- NoDeadair,
        [3] = false,
        -- Pawns,
        [4] = "#ED455357",
        -- SoundId,
        [5] = "1934777432",
    };
    return params;
end;

function export:OnEnter_box_GetActivityState_v2_22()
    local params, l0;
    DrawTextToScreen("Comment: Field C Burned", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'GetActivityState_v2')-- Comment: Field C Burned");
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetActivityState_v2_22");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\uni54_010_brief\\uni54_010_brief_Outpost.domino|@UNI54_010_Brief_Outpost|623974885");
    l0:SetConnections({
        -- Active,
        [0] = self.f_box_GetActivityState_v2_22_Active,
        -- Completed,
        [2] = self.f_box_GetActivityState_v2_22_Completed,
    });
    params = {
        -- activityDescriptorID,
        [0] = "9015274804290278",
    };
    return params;
end;

function export:OnEnter_box_RequestPhoneCall_v2_4()
    local params;
    DrawTextToScreen("Comment: Virgil Dead / No brief / Fields Burnt", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'RequestPhoneCall_v2')-- Comment: Virgil Dead / No brief / Fields Burnt");
    params = {
        -- Delay,
        [2] = 0,
        -- NoDeadair,
        [3] = false,
        -- Pawns,
        [4] = "#ED455357",
        -- SoundId,
        [5] = "2645656313",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_23()
    local params, l0;
    DrawTextToScreen("Comment: Yes", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'OutputOrder_v2')-- Comment: Yes");
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_23");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\uni54_010_brief\\uni54_010_brief_Outpost.domino|@UNI54_010_Brief_Outpost|665979186");
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
                [0] = self.f_box_OutputOrder_v2_23_Out_0,
                [1] = self.f_box_OutputOrder_v2_23_Out_1,
                [2] = self.f_box_OutputOrder_v2_23_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_RequestPhoneCall_v2_36()
    local params;
    DrawTextToScreen("Comment: Virgil Alive / No Brief / Fields Intact", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'RequestPhoneCall_v2')-- Comment: Virgil Alive / No Brief / Fields Intact");
    params = {
        -- Delay,
        [2] = 0,
        -- NoDeadair,
        [3] = false,
        -- Pawns,
        [4] = "#ED455357",
        -- SoundId,
        [5] = "3510543431",
    };
    return params;
end;

function export:OnEnter_box_MultipleAND_v2_18()
    local params;
    DrawTextToScreen("Comment: All Burned", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'MultipleAND_v2')-- Comment: All Burned");
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_26()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_26");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\uni54_010_brief\\uni54_010_brief_Outpost.domino|@UNI54_010_Brief_Outpost|1496078106");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_26_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_GetActivityState_v2_21()
    local params, l0;
    DrawTextToScreen("Comment: Field B Burned", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'GetActivityState_v2')-- Comment: Field B Burned");
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetActivityState_v2_21");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\uni54_010_brief\\uni54_010_brief_Outpost.domino|@UNI54_010_Brief_Outpost|1603899297");
    l0:SetConnections({
        -- Active,
        [0] = self.f_box_GetActivityState_v2_21_Active,
        -- Completed,
        [2] = self.f_box_GetActivityState_v2_21_Completed,
    });
    params = {
        -- activityDescriptorID,
        [0] = "9015274804284374",
    };
    return params;
end;

function export:OnEnter_box_ActivityEnd_5()
    local params, l0;
    DrawTextToScreen("BOX DEBUGINFO  (Name: 'Anonymous', Class: 'ActivityEnd') -- Connected control anchors: 'EndHardSave'", 5, "white");
    LogConsole("BOX DEBUGINFO  (Name: 'Anonymous', Class: 'ActivityEnd') -- Connected control anchors: 'EndHardSave'");
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityEnd_5");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\uni54_010_brief\\uni54_010_brief_Outpost.domino|@UNI54_010_Brief_Outpost|1757748773");
    l0:SetConnections({
    });
    params = {
        -- Success,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_GetActivityState_v2_10()
    local params, l0;
    DrawTextToScreen("Comment: Is Virgil Dead", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'GetActivityState_v2')-- Comment: Is Virgil Dead");
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetActivityState_v2_10");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\uni54_010_brief\\uni54_010_brief_Outpost.domino|@UNI54_010_Brief_Outpost|1767141303");
    l0:SetConnections({
        -- Active,
        [0] = self.f_box_GetActivityState_v2_10_Active,
        -- Completed,
        [2] = self.f_box_GetActivityState_v2_10_Completed,
        -- Inactive,
        [4] = self.f_box_GetActivityState_v2_10_Inactive,
        -- Unavailable,
        [6] = self.f_box_GetActivityState_v2_10_Unavailable,
    });
    params = {
        -- activityDescriptorID,
        [0] = "9015253186088203",
    };
    return params;
end;

function export:OnEnter_box_RequestPhoneCall_v2_28()
    local params;
    DrawTextToScreen("Comment: Virgil Dead / No Brief / Fields Intact", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'RequestPhoneCall_v2')-- Comment: Virgil Dead / No Brief / Fields Intact");
    params = {
        -- Delay,
        [2] = 0,
        -- NoDeadair,
        [3] = false,
        -- Pawns,
        [4] = "#ED455357",
        -- SoundId,
        [5] = "1068209700",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_30()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_30");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\uni54_010_brief\\uni54_010_brief_Outpost.domino|@UNI54_010_Brief_Outpost|1792885363");
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
                [0] = self.f_box_OutputOrder_v2_30_Out_0,
                [1] = self.f_box_OutputOrder_v2_30_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_GetActivityState_v2_13()
    local params, l0;
    DrawTextToScreen("Comment: Has Player Met Virgil", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'GetActivityState_v2')-- Comment: Has Player Met Virgil");
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetActivityState_v2_13");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\uni54_010_brief\\uni54_010_brief_Outpost.domino|@UNI54_010_Brief_Outpost|1941508398");
    l0:SetConnections({
        -- Active,
        [0] = self.f_box_GetActivityState_v2_13_Active,
        -- Completed,
        [2] = self.f_box_GetActivityState_v2_13_Completed,
        -- Inactive,
        [4] = self.f_box_GetActivityState_v2_13_Inactive,
        -- Unavailable,
        [6] = self.f_box_GetActivityState_v2_13_Unavailable,
    });
    params = {
        -- activityDescriptorID,
        [0] = "9015222442077232",
    };
    return params;
end;

function export:OnEnter_box_GetActivityState_v2_20()
    local params, l0;
    DrawTextToScreen("Comment: Field A Burned", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'GetActivityState_v2')-- Comment: Field A Burned");
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetActivityState_v2_20");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\uni54_010_brief\\uni54_010_brief_Outpost.domino|@UNI54_010_Brief_Outpost|2044386032");
    l0:SetConnections({
        -- Active,
        [0] = self.f_box_GetActivityState_v2_20_Active,
        -- Completed,
        [2] = self.f_box_GetActivityState_v2_20_Completed,
    });
    params = {
        -- activityDescriptorID,
        [0] = "9015274804275038",
    };
    return params;
end;

function export:OnExit_box_SetBoolean_v2_29_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    self.VirgilIsDead = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetBoolean_v2_26_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    self.HasOutpostBriefBeenDone = l0:GetDataOutValue(0);
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
