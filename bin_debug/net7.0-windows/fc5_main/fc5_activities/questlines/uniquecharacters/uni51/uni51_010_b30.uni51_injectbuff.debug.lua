LUAC��  -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc5_main/fc5_activities/questlines/uniquecharacters/uni51/uni51_010_b30.domino
-- User graph: UNI51_InjectBuff
-- 
-- 
-- DO NOT EDIT MANUALLY THIS FILE OR YOUR CHANGES WILL BE LOST!
-- Please modify the original Domino script instead. You have been warned.

-- *** SCRIPT INPUT REFLECTION ***
--[[
<InputReflection>
    <DataIn Name="oObjective" Type="Nomad|oasis" />
    <DataIn Name="Buff" Type="Core|string" />
    <DataIn Name="BuffDescriptor" Type="Nomad|genericdb" />
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
        cboxRes:RegisterBox("Domino/System/Activity/AddActivityObjective_v2.lua");
        cboxRes:RegisterBox("Domino/System/Activity/EndActivityObjective_v2.lua");
        cboxRes:RegisterBox("Domino/System/BonusPlanListener_v2.lua");
        cboxRes:RegisterBox("Domino/System/CompareEntity.lua");
        cboxRes:RegisterBox("Domino/System/Coop/CoopActivePlayers.lua");
        cboxRes:RegisterBox("Domino/System/HasBonusPlan.lua");
        cboxRes:RegisterBox("Domino/System/InventoryItemModifier.lua");
        cboxRes:RegisterBox("Domino/System/MultipleAND_v2.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI51/UNI51_010_B30.UNI51_InjectBuff.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Start",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "Done",
                delayed = false,
            },
        },
        controlOutCount = 1,
        dataIn = {
            [0] = {
                name = "Buff",
                type = "string",
            },
            [1] = {
                name = "BuffDescriptor",
                type = "genericdb",
            },
            [2] = {
                name = "oObjective",
                type = "oasis",
            },
        },
        dataInCount = 3,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")] = {
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
                name = "CompletePreviousObjective",
                type = "bool",
            },
            [1] = {
                name = "ObjectiveId",
                type = "oasis",
            },
            [2] = {
                name = "TargetGroup",
                type = "group",
            },
            [3] = {
                name = "Time",
                type = "float",
            },
        },
        dataInCount = 4,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")] = {
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
                name = "ObjectiveId",
                type = "oasis",
            },
            [1] = {
                name = "Success",
                type = "bool",
            },
        },
        dataInCount = 2,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/BonusPlanListener_v2.lua")] = {
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
                name = "BonusPlanAdded",
                delayed = true,
            },
            [1] = {
                name = "BonusPlanRemoved",
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
        },
        controlOutCount = 4,
        dataIn = {
            [0] = {
                name = "autoDisable",
                type = "bool",
            },
            [1] = {
                name = "bonusPlanFilter",
                type = "string",
            },
            [2] = {
                name = "entities",
                type = "group",
            },
        },
        dataInCount = 3,
        dataOut = {
            [0] = {
                name = "entity",
                type = "entity",
            },
        },
        dataOutCount = 1,
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
    metadataTable[GetPathID("Domino/System/HasBonusPlan.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "In",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "False",
                delayed = false,
            },
            [1] = {
                name = "True",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "bonusPlan",
                type = "string",
            },
            [1] = {
                name = "entities",
                type = "group",
            },
        },
        dataInCount = 2,
        dataOut = {
            [0] = {
                name = "entity",
                type = "entity",
            },
        },
        dataOutCount = 1,
    };
    metadataTable[GetPathID("Domino/System/InventoryItemModifier.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Add",
            },
            [1] = {
                name = "Refill",
            },
            [2] = {
                name = "RefillClip",
            },
            [3] = {
                name = "Remove",
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
                name = "itemDescriptorID",
                type = "genericdb",
            },
            [1] = {
                name = "itemFilterID",
                type = "genericdb",
            },
            [2] = {
                name = "players",
                type = "group",
            },
            [3] = {
                name = "quantity",
                type = "int",
            },
        },
        dataInCount = 4,
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
end;

function export:Init(cbox)
    local l0;
    self._name = "UNI51_InjectBuff";
    self._elementPathId = "DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B30.domino|@UNI51_InjectBuff";
    self.Done = DummyFunction;
    self.Client = nil;
    self.Host = nil;
    self.box_MultipleOR_11 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_11;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_11");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B30.domino|@UNI51_InjectBuff|28425732");
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
    self.box_MultipleOR_17 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_17;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_17");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B30.domino|@UNI51_InjectBuff|64224741");
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
        [0] = self.f_box_MultipleOR_17_Out,
    });
    self.box_HasBonusPlan_8 = cbox:CreateBox("Domino/System/HasBonusPlan.lua");
    l0 = self.box_HasBonusPlan_8;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_HasBonusPlan_8");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B30.domino|@UNI51_InjectBuff|158217337");
    l0:SetConnections({
        -- False,
        [0] = self.f_box_HasBonusPlan_8_False,
        -- True,
        [1] = self.f_box_HasBonusPlan_8_True,
    });
    self.box_CoopActivePlayers_4 = cbox:CreateBox("Domino/System/Coop/CoopActivePlayers.lua");
    l0 = self.box_CoopActivePlayers_4;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CoopActivePlayers_4");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B30.domino|@UNI51_InjectBuff|321818914");
    l0:SetConnections({
        -- OnePlayer,
        [0] = self.f_box_CoopActivePlayers_4_OnePlayer,
        -- PlayerAdded,
        [1] = self.f_box_CoopActivePlayers_4_PlayerAdded,
        -- PlayerRemoved,
        [2] = self.f_box_CoopActivePlayers_4_PlayerRemoved,
        -- TwoPlayers,
        [3] = self.f_box_CoopActivePlayers_4_TwoPlayers,
    });
    self.box_BonusPlanListener_v2_9 = cbox:CreateBox("Domino/System/BonusPlanListener_v2.lua");
    l0 = self.box_BonusPlanListener_v2_9;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_BonusPlanListener_v2_9");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B30.domino|@UNI51_InjectBuff|577757995");
    l0:SetConnections({
        -- BonusPlanAdded,
        [0] = self.f_box_BonusPlanListener_v2_9_BonusPlanAdded,
    });
    self.box_MultipleOR_1 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_1");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B30.domino|@UNI51_InjectBuff|629712118");
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
    self.box_MultipleAND_v2_15 = cbox:CreateBox("Domino/System/MultipleAND_v2.lua");
    l0 = self.box_MultipleAND_v2_15;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleAND_v2_15");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B30.domino|@UNI51_InjectBuff|667794611");
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
        [0] = self.f_box_MultipleAND_v2_15_Out,
    });
    self.box_HasBonusPlan_10 = cbox:CreateBox("Domino/System/HasBonusPlan.lua");
    l0 = self.box_HasBonusPlan_10;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_HasBonusPlan_10");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B30.domino|@UNI51_InjectBuff|1087989513");
    l0:SetConnections({
        -- False,
        [0] = self.f_box_HasBonusPlan_10_False,
        -- True,
        [1] = self.f_box_HasBonusPlan_10_True,
    });
    self.box_InventoryItemModifier_20 = cbox:CreateBox("Domino/System/InventoryItemModifier.lua");
    l0 = self.box_InventoryItemModifier_20;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_InventoryItemModifier_20");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B30.domino|@UNI51_InjectBuff|1122080698");
    l0:SetConnections({
    });
    self.box_MultipleOR_13 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_13;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_13");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B30.domino|@UNI51_InjectBuff|1319636260");
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
        [0] = self.f_box_MultipleOR_13_Out,
    });
    self.box_BonusPlanListener_v2_2 = cbox:CreateBox("Domino/System/BonusPlanListener_v2.lua");
    l0 = self.box_BonusPlanListener_v2_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_BonusPlanListener_v2_2");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B30.domino|@UNI51_InjectBuff|1321284180");
    l0:SetConnections({
        -- BonusPlanAdded,
        [0] = self.f_box_BonusPlanListener_v2_2_BonusPlanAdded,
    });
    self.box_BonusPlanListener_v2_12 = cbox:CreateBox("Domino/System/BonusPlanListener_v2.lua");
    l0 = self.box_BonusPlanListener_v2_12;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_BonusPlanListener_v2_12");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B30.domino|@UNI51_InjectBuff|1637695352");
    l0:SetConnections({
        -- BonusPlanAdded,
        [0] = self.f_box_BonusPlanListener_v2_12_BonusPlanAdded,
    });
    self.box_HasBonusPlan_3 = cbox:CreateBox("Domino/System/HasBonusPlan.lua");
    l0 = self.box_HasBonusPlan_3;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_HasBonusPlan_3");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B30.domino|@UNI51_InjectBuff|1999151085");
    l0:SetConnections({
        -- False,
        [0] = self.f_box_HasBonusPlan_3_False,
        -- True,
        [1] = self.f_box_HasBonusPlan_3_True,
    });
end;

function export:Start()
    local params, l0;
    params = self:OnEnter_box_AddActivityObjective_v2_5();
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B30.domino|@UNI51_InjectBuff|2077804048", "2077804048", "UNI51_InjectBuff", "Start", "box_AddActivityObjective_v2_5.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_11_Out()
    local params, l0, l1;
    params = self:OnEnter_box_MultipleAND_v2_15();
    l0 = self.box_MultipleOR_11;
    l1 = self.box_MultipleAND_v2_15;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B30.domino|@UNI51_InjectBuff|1147980087", "1147980087", "UNI51_InjectBuff", "box_MultipleOR_11.Out", "box_MultipleAND_v2_15.Condition", l0:GetLuaBox(), l1:GetLuaBox());
    -- Condition
    l1:ExecDynInt(0, params, 0);
end;

function export:f_box_MultipleOR_17_Out()
    local params, l0, l1;
    params = self:OnEnter_box_EndActivityObjective_v2_6();
    l0 = self.box_MultipleOR_17;
    l1 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B30.domino|@UNI51_InjectBuff|844263833", "844263833", "UNI51_InjectBuff", "box_MultipleOR_17.Out", "box_EndActivityObjective_v2_6.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_19_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_CoopActivePlayers_4;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B30.domino|@UNI51_InjectBuff|968279797", "968279797", "UNI51_InjectBuff", "box_OutputOrder_v2_19.Out", "box_CoopActivePlayers_4.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, {
    });
end;

function export:f_box_OutputOrder_v2_19_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B30.domino|@UNI51_InjectBuff|829804009", "829804009", "UNI51_InjectBuff", "box_OutputOrder_v2_19.Out", "Done", clone:GetLuaBox(), self);
    self:Done();
end;

function export:f_box_HasBonusPlan_8_False()
    local params, l0, l1;
    params = self:OnEnter_box_BonusPlanListener_v2_9();
    l0 = self.box_HasBonusPlan_8;
    l1 = self.box_BonusPlanListener_v2_9;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B30.domino|@UNI51_InjectBuff|1820266699", "1820266699", "UNI51_InjectBuff", "box_HasBonusPlan_8.False", "box_BonusPlanListener_v2_9.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_HasBonusPlan_8_True()
    local l0, l1;
    l0 = self.box_HasBonusPlan_8;
    l1 = self.box_MultipleOR_11;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B30.domino|@UNI51_InjectBuff|1248370210", "1248370210", "UNI51_InjectBuff", "box_HasBonusPlan_8.True", "box_MultipleOR_11.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_CoopActivePlayers_4_OnePlayer()
    self:OnExit_box_CoopActivePlayers_4_OnePlayer();
end;

function export:f_box_CoopActivePlayers_4_PlayerAdded()
    local params, l0, l1;
    self:OnExit_box_CoopActivePlayers_4_PlayerAdded();
    params = self:OnEnter_box_InventoryItemModifier_20();
    l0 = self.box_CoopActivePlayers_4;
    l1 = self.box_InventoryItemModifier_20;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B30.domino|@UNI51_InjectBuff|1450194491", "1450194491", "UNI51_InjectBuff", "box_CoopActivePlayers_4.PlayerAdded", "box_InventoryItemModifier_20.Add", l0:GetLuaBox(), l1:GetLuaBox());
    -- Add
    l1:Exec(0, params);
end;

function export:f_box_CoopActivePlayers_4_PlayerRemoved()
    local params, l0, l1;
    self:OnExit_box_CoopActivePlayers_4_PlayerRemoved();
    params = self:OnEnter_box_Compare_Entity_18();
    l0 = self.box_CoopActivePlayers_4;
    l1 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B30.domino|@UNI51_InjectBuff|1564148866", "1564148866", "UNI51_InjectBuff", "box_CoopActivePlayers_4.PlayerRemoved", "box_Compare_Entity_18.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_CoopActivePlayers_4_TwoPlayers()
    local params, l0, l1;
    self:OnExit_box_CoopActivePlayers_4_TwoPlayers();
    params = self:OnEnter_box_OutputOrder_v2_14();
    l0 = self.box_CoopActivePlayers_4;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B30.domino|@UNI51_InjectBuff|58839136", "58839136", "UNI51_InjectBuff", "box_CoopActivePlayers_4.TwoPlayers", "box_OutputOrder_v2_14.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_BonusPlanListener_v2_9_BonusPlanAdded()
    local l0, l1;
    l0 = self.box_BonusPlanListener_v2_9;
    l1 = self.box_MultipleOR_11;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B30.domino|@UNI51_InjectBuff|1064559321", "1064559321", "UNI51_InjectBuff", "box_BonusPlanListener_v2_9.BonusPlanAdded", "box_MultipleOR_11.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_MultipleOR_1_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_1;
    l1 = self.box_MultipleOR_17;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B30.domino|@UNI51_InjectBuff|834752669", "834752669", "UNI51_InjectBuff", "box_MultipleOR_1.Out", "box_MultipleOR_17.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Compare_Entity_16_Equal()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_13;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B30.domino|@UNI51_InjectBuff|299109763", "299109763", "UNI51_InjectBuff", "box_Compare_Entity_16.Equal", "box_MultipleOR_13.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_MultipleAND_v2_15_Out()
    local l0, l1;
    l0 = self.box_MultipleAND_v2_15;
    l1 = self.box_MultipleOR_17;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B30.domino|@UNI51_InjectBuff|1487474747", "1487474747", "UNI51_InjectBuff", "box_MultipleAND_v2_15.Out", "box_MultipleOR_17.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Compare_Entity_18_Equal()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_11;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B30.domino|@UNI51_InjectBuff|1458194952", "1458194952", "UNI51_InjectBuff", "box_Compare_Entity_18.Equal", "box_MultipleOR_11.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_Compare_Entity_18_NotEqual()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Entity_16();
    l0 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B30.domino|@UNI51_InjectBuff|498246492", "498246492", "UNI51_InjectBuff", "box_Compare_Entity_18.NotEqual", "box_Compare_Entity_16.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_14_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_HasBonusPlan_8();
    l0 = self.box_HasBonusPlan_8;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B30.domino|@UNI51_InjectBuff|1686168968", "1686168968", "UNI51_InjectBuff", "box_OutputOrder_v2_14.Out", "box_HasBonusPlan_8.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_14_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_HasBonusPlan_10();
    l0 = self.box_HasBonusPlan_10;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B30.domino|@UNI51_InjectBuff|1992142345", "1992142345", "UNI51_InjectBuff", "box_OutputOrder_v2_14.Out", "box_HasBonusPlan_10.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_HasBonusPlan_10_False()
    local params, l0, l1;
    params = self:OnEnter_box_BonusPlanListener_v2_12();
    l0 = self.box_HasBonusPlan_10;
    l1 = self.box_BonusPlanListener_v2_12;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B30.domino|@UNI51_InjectBuff|916197041", "916197041", "UNI51_InjectBuff", "box_HasBonusPlan_10.False", "box_BonusPlanListener_v2_12.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_HasBonusPlan_10_True()
    local l0, l1;
    l0 = self.box_HasBonusPlan_10;
    l1 = self.box_MultipleOR_13;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B30.domino|@UNI51_InjectBuff|1136251984", "1136251984", "UNI51_InjectBuff", "box_HasBonusPlan_10.True", "box_MultipleOR_13.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_MultipleOR_13_Out()
    local params, l0, l1;
    params = self:OnEnter_box_MultipleAND_v2_15();
    l0 = self.box_MultipleOR_13;
    l1 = self.box_MultipleAND_v2_15;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B30.domino|@UNI51_InjectBuff|909856832", "909856832", "UNI51_InjectBuff", "box_MultipleOR_13.Out", "box_MultipleAND_v2_15.Condition", l0:GetLuaBox(), l1:GetLuaBox());
    -- Condition
    l1:ExecDynInt(0, params, 1);
end;

function export:f_box_BonusPlanListener_v2_2_BonusPlanAdded()
    local l0, l1;
    l0 = self.box_BonusPlanListener_v2_2;
    l1 = self.box_MultipleOR_1;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B30.domino|@UNI51_InjectBuff|1097288649", "1097288649", "UNI51_InjectBuff", "box_BonusPlanListener_v2_2.BonusPlanAdded", "box_MultipleOR_1.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_AddActivityObjective_v2_5_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_HasBonusPlan_3();
    l0 = self.box_HasBonusPlan_3;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B30.domino|@UNI51_InjectBuff|496763990", "496763990", "UNI51_InjectBuff", "box_AddActivityObjective_v2_5.Out", "box_HasBonusPlan_3.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_EndActivityObjective_v2_6_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_19();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B30.domino|@UNI51_InjectBuff|1107393026", "1107393026", "UNI51_InjectBuff", "box_EndActivityObjective_v2_6.Out", "box_OutputOrder_v2_19.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_BonusPlanListener_v2_12_BonusPlanAdded()
    local l0, l1;
    l0 = self.box_BonusPlanListener_v2_12;
    l1 = self.box_MultipleOR_13;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B30.domino|@UNI51_InjectBuff|843764324", "843764324", "UNI51_InjectBuff", "box_BonusPlanListener_v2_12.BonusPlanAdded", "box_MultipleOR_13.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_HasBonusPlan_3_False()
    local params, l0, l1;
    params = self:OnEnter_box_BonusPlanListener_v2_2();
    l0 = self.box_HasBonusPlan_3;
    l1 = self.box_BonusPlanListener_v2_2;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B30.domino|@UNI51_InjectBuff|1865297595", "1865297595", "UNI51_InjectBuff", "box_HasBonusPlan_3.False", "box_BonusPlanListener_v2_2.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_HasBonusPlan_3_True()
    local l0, l1;
    l0 = self.box_HasBonusPlan_3;
    l1 = self.box_MultipleOR_1;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B30.domino|@UNI51_InjectBuff|1692955368", "1692955368", "UNI51_InjectBuff", "box_HasBonusPlan_3.True", "box_MultipleOR_1.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:OnEnter_box_OutputOrder_v2_19()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_19");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B30.domino|@UNI51_InjectBuff|122253913");
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

function export:OnEnter_box_HasBonusPlan_8()
    local params;
    params = {
        -- bonusPlan,
        [0] = self.Buff,
        -- entities,
        [1] = self.Host,
    };
    return params;
end;

function export:OnEnter_box_BonusPlanListener_v2_9()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- bonusPlanFilter,
        [1] = self.Buff,
        -- entities,
        [2] = self.Host,
    };
    return params;
end;

function export:OnEnter_box_Compare_Entity_16()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Entity_16");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B30.domino|@UNI51_InjectBuff|656742689");
    l0:SetConnections({
        -- Equal,
        [0] = self.f_box_Compare_Entity_16_Equal,
    });
    l0 = self.box_CoopActivePlayers_4;
    params = {
        -- Entity1,
        [0] = self.Client,
        -- Entity2,
        [1] = l0:GetDataOutValue(2),
    };
    return params;
end;

function export:OnEnter_box_MultipleAND_v2_15()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_Compare_Entity_18()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Entity_18");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B30.domino|@UNI51_InjectBuff|849675950");
    l0:SetConnections({
        -- Equal,
        [0] = self.f_box_Compare_Entity_18_Equal,
        -- NotEqual,
        [1] = self.f_box_Compare_Entity_18_NotEqual,
    });
    l0 = self.box_CoopActivePlayers_4;
    params = {
        -- Entity1,
        [0] = self.Host,
        -- Entity2,
        [1] = l0:GetDataOutValue(2),
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_14()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_14");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B30.domino|@UNI51_InjectBuff|915641040");
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

function export:OnEnter_box_HasBonusPlan_10()
    local params;
    params = {
        -- bonusPlan,
        [0] = self.Buff,
        -- entities,
        [1] = self.Client,
    };
    return params;
end;

function export:OnEnter_box_InventoryItemModifier_20()
    local params, l0;
    l0 = self.box_CoopActivePlayers_4;
    params = {
        -- itemDescriptorID,
        [0] = self.BuffDescriptor,
        -- players,
        [2] = l0:GetDataOutValue(2),
        -- quantity,
        [3] = 3,
    };
    return params;
end;

function export:OnEnter_box_BonusPlanListener_v2_2()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- bonusPlanFilter,
        [1] = self.Buff,
        -- entities,
        [2] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_AddActivityObjective_v2_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_AddActivityObjective_v2_5");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B30.domino|@UNI51_InjectBuff|1342876546");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_AddActivityObjective_v2_5_Out,
    });
    params = {
        -- CompletePreviousObjective,
        [0] = true,
        -- ObjectiveId,
        [1] = self.oObjective,
        -- TargetGroup,
        [2] = "#ED455357",
        -- Time,
        [3] = 0,
    };
    return params;
end;

function export:OnEnter_box_EndActivityObjective_v2_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EndActivityObjective_v2_6");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B30.domino|@UNI51_InjectBuff|1393591818");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_EndActivityObjective_v2_6_Out,
    });
    params = {
        -- ObjectiveId,
        [0] = self.oObjective,
        -- Success,
        [1] = true,
    };
    return params;
end;

function export:OnEnter_box_BonusPlanListener_v2_12()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- bonusPlanFilter,
        [1] = self.Buff,
        -- entities,
        [2] = self.Client,
    };
    return params;
end;

function export:OnEnter_box_HasBonusPlan_3()
    local params;
    params = {
        -- bonusPlan,
        [0] = self.Buff,
        -- entities,
        [1] = "#ED455357",
    };
    return params;
end;

function export:OnExit_box_CoopActivePlayers_4_OnePlayer()
    local l0;
    l0 = self.box_CoopActivePlayers_4;
    self.Host = l0:GetDataOutValue(0);
end;

function export:OnExit_box_CoopActivePlayers_4_PlayerAdded()
    local l0, l1;
    l0 = self.box_CoopActivePlayers_4;
    l1 = self.box_InventoryItemModifier_20;
    l1:GetLuaBox().players = l0:GetDataOutValue(2);
end;

function export:OnExit_box_CoopActivePlayers_4_PlayerRemoved()
    local l0, l1;
    l0 = self.box_CoopActivePlayers_4;
    l1 = self.box_InventoryItemModifier_20;
    l1:GetLuaBox().players = l0:GetDataOutValue(2);
end;

function export:OnExit_box_CoopActivePlayers_4_TwoPlayers()
    local l0;
    l0 = self.box_CoopActivePlayers_4;
    self.Host = l0:GetDataOutValue(0);
    self.Client = l0:GetDataOutValue(1);
end;

-- Empty out anchor definitions
function export:Done()
    
end;
_compilerVersion = 60;
<DominoMetadata IsStateless="0" IsSystem="0">
	<ControlsIn>
		<ControlIn Name="Start" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
	</ControlsIn>
	<ControlsOut>
		<ControlOut Name="Done" AnchorDynType="0" IsDelayed="0" />
	</ControlsOut>
	<DatasIn>
		<DataIn Name="Buff" AnchorDynType="0" DataTypeID="string" />
		<DataIn Name="BuffDescriptor" AnchorDynType="0" DataTypeID="genericdb" />
		<DataIn Name="oObjective" AnchorDynType="0" DataTypeID="oasis" />
	</DatasIn>
	<DatasOut />
</DominoMetadata>
