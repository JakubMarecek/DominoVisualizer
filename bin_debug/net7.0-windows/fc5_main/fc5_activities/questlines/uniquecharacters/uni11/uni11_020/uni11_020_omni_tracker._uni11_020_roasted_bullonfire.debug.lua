LUAC�+ -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc5_main/fc5_activities/questlines/uniquecharacters/uni11/uni11_020/uni11_020_omni_tracker.domino
-- User graph: _UNI11_020_Roasted_BullOnFire
-- 
-- 
-- DO NOT EDIT MANUALLY THIS FILE OR YOUR CHANGES WILL BE LOST!
-- Please modify the original Domino script instead. You have been warned.

-- *** SCRIPT INPUT REFLECTION ***
--[[
<InputReflection>
    <DataIn Name="e_BullOnFire" Type="Nomad|entity{}" />
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
        cboxRes:RegisterBox("Domino/System/CompareStrings.lua");
        cboxRes:RegisterBox("Domino/System/Coop/Group/GroupAddToGroup_v2.lua");
        cboxRes:RegisterBox("Domino/System/Delay_v5.lua");
        cboxRes:RegisterBox("Domino/System/Gate_v3.lua");
        cboxRes:RegisterBox("Domino/System/GroupSizeListener_v5.lua");
        cboxRes:RegisterBox("Domino/System/HealthListener_v6.lua");
        cboxRes:RegisterBox("Domino/System/HealthModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/IndexList_v2.lua");
        cboxRes:RegisterBox("Domino/System/OnceOnly_v3.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/SetLootGroup.lua");
        cboxRes:RegisterBox("Domino/System/SimpleNode.lua");
        cboxRes:RegisterBox("Domino/System/Switch.lua");
        cboxRes:RegisterBox("Domino/user/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI11/UNI11_020/UNI11_020_Omni_Tracker._UNI11_020_CollectMarkers.debug.lua");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI11/UNI11_020/UNI11_020_Omni_Tracker._UNI11_020_Roasted_BullOnFire.debug.lua")] = {
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
                name = "BullKilled",
                delayed = false,
            },
        },
        controlOutCount = 1,
        dataIn = {
            [0] = {
                name = "e_BullOnFire",
                type = "entity",
            },
        },
        dataInCount = 1,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/CompareStrings.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "In",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "A_contains_B",
                delayed = false,
            },
            [1] = {
                name = "A_eq_B",
                delayed = false,
            },
            [2] = {
                name = "A_ncontains_B",
                delayed = false,
            },
            [3] = {
                name = "A_neq_B",
                delayed = false,
            },
        },
        controlOutCount = 4,
        dataIn = {
            [0] = {
                name = "A",
                type = "string",
            },
            [1] = {
                name = "B",
                type = "string",
            },
            [2] = {
                name = "IgnoreCase",
                type = "bool",
            },
        },
        dataInCount = 3,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/Coop/Group/GroupAddToGroup_v2.lua")] = {
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
                name = "FromGroup",
                type = "group",
            },
            [1] = {
                name = "ToGroup",
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
    metadataTable[GetPathID("Domino/System/GroupSizeListener_v5.lua")] = {
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
                name = "MemberAdded",
                delayed = true,
            },
            [3] = {
                name = "MemberRemoved",
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
                name = "group",
                type = "group",
            },
        },
        dataInCount = 2,
        dataOut = {
            [0] = {
                name = "Entity",
                type = "entity",
            },
            [1] = {
                name = "memberCount",
                type = "int",
            },
        },
        dataOutCount = 2,
    };
    metadataTable[GetPathID("Domino/System/HealthListener_v6.lua")] = {
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
                name = "Critical",
                delayed = true,
            },
            [1] = {
                name = "Damaged",
                delayed = true,
            },
            [2] = {
                name = "Disabled",
                delayed = false,
            },
            [3] = {
                name = "Downed",
                delayed = true,
            },
            [4] = {
                name = "Enabled",
                delayed = false,
            },
            [5] = {
                name = "Healed",
                delayed = true,
            },
            [6] = {
                name = "Killed",
                delayed = true,
            },
            [7] = {
                name = "Revived",
                delayed = true,
            },
        },
        controlOutCount = 8,
        dataIn = {
            [0] = {
                name = "AutoDisable",
                type = "bool",
            },
            [1] = {
                name = "pawns",
                type = "group",
            },
        },
        dataInCount = 2,
        dataOut = {
            [0] = {
                name = "current",
                type = "float",
            },
            [1] = {
                name = "delta",
                type = "float",
            },
            [2] = {
                name = "emitterName",
                type = "string",
            },
            [3] = {
                name = "hitLocation",
                type = "string",
            },
            [4] = {
                name = "instigator",
                type = "entity",
            },
            [5] = {
                name = "sourceType",
                type = "string",
            },
            [6] = {
                name = "victim",
                type = "entity",
            },
        },
        dataOutCount = 7,
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
    metadataTable[GetPathID("Domino/System/IndexList_v2.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "In",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "Output",
                dynamicType = 1,
                delayed = false,
            },
        },
        controlOutCount = 1,
        dataIn = {
            [0] = {
                name = "Index",
                type = "int",
            },
        },
        dataInCount = 1,
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
    metadataTable[GetPathID("Domino/System/SetLootGroup.lua")] = {
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
                name = "LootGroup",
                type = "genericdb",
            },
            [1] = {
                name = "Targets",
                type = "group",
            },
        },
        dataInCount = 2,
        dataOut = {
        },
        dataOutCount = 0,
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
    metadataTable[GetPathID("Domino/System/Switch.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "In",
            },
            [1] = {
                name = "Reset",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "None",
                delayed = false,
            },
            [1] = {
                name = "Out",
                delayed = false,
            },
            [2] = {
                name = "Output",
                dynamicType = 1,
                delayed = false,
            },
        },
        controlOutCount = 3,
        dataIn = {
            [0] = {
                name = "AutoReset",
                type = "bool",
            },
        },
        dataInCount = 1,
        dataOut = {
            [0] = {
                name = "OutputNb",
                type = "int",
            },
        },
        dataOutCount = 1,
    };
    metadataTable[GetPathID("Domino/user/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI11/UNI11_020/UNI11_020_Omni_Tracker._UNI11_020_CollectMarkers.debug.lua")] = {
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
        },
        controlOutCount = 0,
        dataIn = {
            [0] = {
                name = "e_Bull",
                type = "entity",
            },
            [1] = {
                name = "e_CollectMarker",
                type = "entity",
            },
            [2] = {
                name = "o_CollectObjective",
                type = "oasis",
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
    self._name = "_UNI11_020_Roasted_BullOnFire";
    self._elementPathId = "DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_Omni_Tracker.domino|@_UNI11_020_Roasted_BullOnFire";
    self.BullKilled = DummyFunction;
    self.e_Victim = nil;
    self.i_MarkedBurned = 0;
    self.box_OnceOnly_v3_33 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_33;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_33");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_Omni_Tracker.domino|@_UNI11_020_Roasted_BullOnFire|168619860");
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
    self.box__UNI11_020_CollectMarkers_27 = cbox:CreateBox("Domino/user/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI11/UNI11_020/UNI11_020_Omni_Tracker._UNI11_020_CollectMarkers.debug.lua");
    l0 = self.box__UNI11_020_CollectMarkers_27;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box__UNI11_020_CollectMarkers_27");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_Omni_Tracker.domino|@_UNI11_020_Roasted_BullOnFire|502503443");
    l0:SetConnections({
    });
    self.box__UNI11_020_CollectMarkers_16 = cbox:CreateBox("Domino/user/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI11/UNI11_020/UNI11_020_Omni_Tracker._UNI11_020_CollectMarkers.debug.lua");
    l0 = self.box__UNI11_020_CollectMarkers_16;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box__UNI11_020_CollectMarkers_16");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_Omni_Tracker.domino|@_UNI11_020_Roasted_BullOnFire|549969957");
    l0:SetConnections({
    });
    self.box__UNI11_020_CollectMarkers_28 = cbox:CreateBox("Domino/user/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI11/UNI11_020/UNI11_020_Omni_Tracker._UNI11_020_CollectMarkers.debug.lua");
    l0 = self.box__UNI11_020_CollectMarkers_28;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box__UNI11_020_CollectMarkers_28");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_Omni_Tracker.domino|@_UNI11_020_Roasted_BullOnFire|690931957");
    l0:SetConnections({
    });
    self.box__UNI11_020_CollectMarkers_25 = cbox:CreateBox("Domino/user/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI11/UNI11_020/UNI11_020_Omni_Tracker._UNI11_020_CollectMarkers.debug.lua");
    l0 = self.box__UNI11_020_CollectMarkers_25;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box__UNI11_020_CollectMarkers_25");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_Omni_Tracker.domino|@_UNI11_020_Roasted_BullOnFire|956086972");
    l0:SetConnections({
    });
    self.box_HealthListener_v6_10 = cbox:CreateBox("Domino/System/HealthListener_v6.lua");
    l0 = self.box_HealthListener_v6_10;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_HealthListener_v6_10");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_Omni_Tracker.domino|@_UNI11_020_Roasted_BullOnFire|970860819");
    l0:SetConnections({
        -- Critical,
        [0] = self.f_box_HealthListener_v6_10_Critical,
        -- Damaged,
        [1] = self.f_box_HealthListener_v6_10_Damaged,
        -- Disabled,
        [2] = self.f_box_HealthListener_v6_10_Disabled,
        -- Downed,
        [3] = self.f_box_HealthListener_v6_10_Downed,
        -- Enabled,
        [4] = self.f_box_HealthListener_v6_10_Enabled,
        -- Healed,
        [5] = self.f_box_HealthListener_v6_10_Healed,
        -- Killed,
        [6] = self.f_box_HealthListener_v6_10_Killed,
        -- Revived,
        [7] = self.f_box_HealthListener_v6_10_Revived,
    });
    self.box__UNI11_020_CollectMarkers_21 = cbox:CreateBox("Domino/user/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI11/UNI11_020/UNI11_020_Omni_Tracker._UNI11_020_CollectMarkers.debug.lua");
    l0 = self.box__UNI11_020_CollectMarkers_21;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box__UNI11_020_CollectMarkers_21");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_Omni_Tracker.domino|@_UNI11_020_Roasted_BullOnFire|988624289");
    l0:SetConnections({
    });
    self.box_Gate_v3_12 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_12;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_12");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_Omni_Tracker.domino|@_UNI11_020_Roasted_BullOnFire|1052447171");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_12_Out,
    });
    self.box_SetLootGroup_7 = cbox:CreateBox("Domino/System/SetLootGroup.lua");
    l0 = self.box_SetLootGroup_7;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetLootGroup_7");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_Omni_Tracker.domino|@_UNI11_020_Roasted_BullOnFire|1079495952");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetLootGroup_7_Out,
    });
    self.box_Switch_19 = cbox:CreateBox("Domino/System/Switch.lua");
    l0 = self.box_Switch_19;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Switch_19");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_Omni_Tracker.domino|@_UNI11_020_Roasted_BullOnFire|1128054879");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
            [2] = 10,
        },
        dataIn = {
        },
        dataOut = {
        },
    });
    l0:SetConnections({
        -- Output,
        [2] = {
            connections = {
                [0] = self.f_box_Switch_19_Output_0,
                [1] = self.f_box_Switch_19_Output_1,
                [2] = self.f_box_Switch_19_Output_2,
                [3] = self.f_box_Switch_19_Output_3,
                [4] = self.f_box_Switch_19_Output_4,
                [5] = self.f_box_Switch_19_Output_5,
                [6] = self.f_box_Switch_19_Output_6,
                [7] = self.f_box_Switch_19_Output_7,
                [8] = self.f_box_Switch_19_Output_8,
                [9] = self.f_box_Switch_19_Output_9,
            },
            count = 10,
        },
    });
    self.box_GroupSizeListener_v5_22 = cbox:CreateBox("Domino/System/GroupSizeListener_v5.lua");
    l0 = self.box_GroupSizeListener_v5_22;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GroupSizeListener_v5_22");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_Omni_Tracker.domino|@_UNI11_020_Roasted_BullOnFire|1204972000");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_GroupSizeListener_v5_22_Disabled,
        -- Enabled,
        [1] = self.f_box_GroupSizeListener_v5_22_Enabled,
        -- MemberAdded,
        [2] = self.f_box_GroupSizeListener_v5_22_MemberAdded,
        -- MemberRemoved,
        [3] = self.f_box_GroupSizeListener_v5_22_MemberRemoved,
    });
    self.box__UNI11_020_CollectMarkers_30 = cbox:CreateBox("Domino/user/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI11/UNI11_020/UNI11_020_Omni_Tracker._UNI11_020_CollectMarkers.debug.lua");
    l0 = self.box__UNI11_020_CollectMarkers_30;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box__UNI11_020_CollectMarkers_30");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_Omni_Tracker.domino|@_UNI11_020_Roasted_BullOnFire|1304205746");
    l0:SetConnections({
    });
    self.box_IndexList_v2_29 = cbox:CreateBox("Domino/System/IndexList_v2.lua");
    l0 = self.box_IndexList_v2_29;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IndexList_v2_29");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_Omni_Tracker.domino|@_UNI11_020_Roasted_BullOnFire|1319987859");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
            [0] = 10,
        },
        dataIn = {
        },
        dataOut = {
        },
    });
    l0:SetConnections({
        -- Output,
        [0] = {
            connections = {
                [0] = self.f_box_IndexList_v2_29_Output_0,
                [1] = self.f_box_IndexList_v2_29_Output_1,
                [2] = self.f_box_IndexList_v2_29_Output_2,
                [3] = self.f_box_IndexList_v2_29_Output_3,
                [4] = self.f_box_IndexList_v2_29_Output_4,
                [5] = self.f_box_IndexList_v2_29_Output_5,
                [6] = self.f_box_IndexList_v2_29_Output_6,
                [7] = self.f_box_IndexList_v2_29_Output_7,
                [8] = self.f_box_IndexList_v2_29_Output_8,
                [9] = self.f_box_IndexList_v2_29_Output_9,
            },
            count = 10,
        },
    });
    self.box_OnceOnly_v3_31 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_31;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_31");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_Omni_Tracker.domino|@_UNI11_020_Roasted_BullOnFire|1463431634");
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
                [0] = self.f_box_OnceOnly_v3_31_Out_0,
            },
            count = 2,
        },
    });
    self.box_HealthListener_v6_3 = cbox:CreateBox("Domino/System/HealthListener_v6.lua");
    l0 = self.box_HealthListener_v6_3;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_HealthListener_v6_3");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_Omni_Tracker.domino|@_UNI11_020_Roasted_BullOnFire|1564215571");
    l0:SetConnections({
        -- Critical,
        [0] = self.f_box_HealthListener_v6_3_Critical,
        -- Damaged,
        [1] = self.f_box_HealthListener_v6_3_Damaged,
        -- Disabled,
        [2] = self.f_box_HealthListener_v6_3_Disabled,
        -- Downed,
        [3] = self.f_box_HealthListener_v6_3_Downed,
        -- Enabled,
        [4] = self.f_box_HealthListener_v6_3_Enabled,
        -- Healed,
        [5] = self.f_box_HealthListener_v6_3_Healed,
        -- Killed,
        [6] = self.f_box_HealthListener_v6_3_Killed,
        -- Revived,
        [7] = self.f_box_HealthListener_v6_3_Revived,
    });
    self.box__UNI11_020_CollectMarkers_24 = cbox:CreateBox("Domino/user/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI11/UNI11_020/UNI11_020_Omni_Tracker._UNI11_020_CollectMarkers.debug.lua");
    l0 = self.box__UNI11_020_CollectMarkers_24;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box__UNI11_020_CollectMarkers_24");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_Omni_Tracker.domino|@_UNI11_020_Roasted_BullOnFire|1640202064");
    l0:SetConnections({
    });
    self.box__UNI11_020_CollectMarkers_23 = cbox:CreateBox("Domino/user/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI11/UNI11_020/UNI11_020_Omni_Tracker._UNI11_020_CollectMarkers.debug.lua");
    l0 = self.box__UNI11_020_CollectMarkers_23;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box__UNI11_020_CollectMarkers_23");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_Omni_Tracker.domino|@_UNI11_020_Roasted_BullOnFire|1683556473");
    l0:SetConnections({
    });
    self.box__UNI11_020_CollectMarkers_26 = cbox:CreateBox("Domino/user/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI11/UNI11_020/UNI11_020_Omni_Tracker._UNI11_020_CollectMarkers.debug.lua");
    l0 = self.box__UNI11_020_CollectMarkers_26;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box__UNI11_020_CollectMarkers_26");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_Omni_Tracker.domino|@_UNI11_020_Roasted_BullOnFire|1715938077");
    l0:SetConnections({
    });
    self.box__UNI11_020_CollectMarkers_17 = cbox:CreateBox("Domino/user/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI11/UNI11_020/UNI11_020_Omni_Tracker._UNI11_020_CollectMarkers.debug.lua");
    l0 = self.box__UNI11_020_CollectMarkers_17;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box__UNI11_020_CollectMarkers_17");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_Omni_Tracker.domino|@_UNI11_020_Roasted_BullOnFire|1776122708");
    l0:SetConnections({
    });
    self.box_Delay_v5_6 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_6;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_6");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_Omni_Tracker.domino|@_UNI11_020_Roasted_BullOnFire|1930104736");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_6_TimeElapsed,
    });
end;

function export:Disable()
    local params, l0;
    params = self:OnEnter_box_Simple_Node_14();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_Omni_Tracker.domino|@_UNI11_020_Roasted_BullOnFire|1948475999", "1948475999", "_UNI11_020_Roasted_BullOnFire", "Disable", "box_Simple_Node_14.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:Enable()
    local params, l0;
    params = self:OnEnter_box_GroupAddToGroup_v2_13();
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/GroupAddToGroup_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_Omni_Tracker.domino|@_UNI11_020_Roasted_BullOnFire|1348028436", "1348028436", "_UNI11_020_Roasted_BullOnFire", "Enable", "box_GroupAddToGroup_v2_13.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_14_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_GroupSizeListener_v5_22();
    l0 = self.box_GroupSizeListener_v5_22;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_Omni_Tracker.domino|@_UNI11_020_Roasted_BullOnFire|1800580360", "1800580360", "_UNI11_020_Roasted_BullOnFire", "box_Simple_Node_14.Out", "box_GroupSizeListener_v5_22.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    params = self:OnEnter_box_IndexList_v2_29();
    l0 = self.box_IndexList_v2_29;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_Omni_Tracker.domino|@_UNI11_020_Roasted_BullOnFire|1850501706", "1850501706", "_UNI11_020_Roasted_BullOnFire", "box_Simple_Node_14.Out", "box_IndexList_v2_29.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    params = self:OnEnter_box_HealthListener_v6_3();
    l0 = self.box_HealthListener_v6_3;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_Omni_Tracker.domino|@_UNI11_020_Roasted_BullOnFire|326986536", "326986536", "_UNI11_020_Roasted_BullOnFire", "box_Simple_Node_14.Out", "box_HealthListener_v6_3.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    params = self:OnEnter_box_Gate_v3_12();
    l0 = self.box_Gate_v3_12;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_Omni_Tracker.domino|@_UNI11_020_Roasted_BullOnFire|968532766", "968532766", "_UNI11_020_Roasted_BullOnFire", "box_Simple_Node_14.Out", "box_Gate_v3_12.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
    params = self:OnEnter_box_HealthListener_v6_10();
    l0 = self.box_HealthListener_v6_10;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_Omni_Tracker.domino|@_UNI11_020_Roasted_BullOnFire|1248303487", "1248303487", "_UNI11_020_Roasted_BullOnFire", "box_Simple_Node_14.Out", "box_HealthListener_v6_10.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_4_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_6();
    l0 = self.box_Delay_v5_6;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_Omni_Tracker.domino|@_UNI11_020_Roasted_BullOnFire|325285390", "325285390", "_UNI11_020_Roasted_BullOnFire", "box_OutputOrder_v2_4.Out", "box_Delay_v5_6.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_4_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_HealthListener_v6_10();
    l0 = self.box_HealthListener_v6_10;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_Omni_Tracker.domino|@_UNI11_020_Roasted_BullOnFire|1235432596", "1235432596", "_UNI11_020_Roasted_BullOnFire", "box_OutputOrder_v2_4.Out", "box_HealthListener_v6_10.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OnceOnly_v3_33_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_HealthModifier_v2_8();
    l0 = self.box_OnceOnly_v3_33;
    l1 = Boxes[GetPathID("Domino/System/HealthModifier_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_Omni_Tracker.domino|@_UNI11_020_Roasted_BullOnFire|174049051", "174049051", "_UNI11_020_Roasted_BullOnFire", "box_OnceOnly_v3_33.Out", "box_HealthModifier_v2_8.Damage", l0:GetLuaBox(), l1:GetLuaBox());
    -- Damage
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Compare_Strings_2_A_eq_B()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    local clone = l0;
    l0 = self.box_OnceOnly_v3_33;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_Omni_Tracker.domino|@_UNI11_020_Roasted_BullOnFire|412856154", "412856154", "_UNI11_020_Roasted_BullOnFire", "box_Compare_Strings_2.A_eq_B", "box_OnceOnly_v3_33.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_HealthListener_v6_10_Killed()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_9();
    l0 = self.box_HealthListener_v6_10;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_Omni_Tracker.domino|@_UNI11_020_Roasted_BullOnFire|744536118", "744536118", "_UNI11_020_Roasted_BullOnFire", "box_HealthListener_v6_10.Killed", "box_OutputOrder_v2_9.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_GroupAddToGroup_v2_13_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/GroupAddToGroup_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_4();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_Omni_Tracker.domino|@_UNI11_020_Roasted_BullOnFire|1305556613", "1305556613", "_UNI11_020_Roasted_BullOnFire", "box_GroupAddToGroup_v2_13.Out", "box_OutputOrder_v2_4.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_9_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_6();
    l0 = self.box_Delay_v5_6;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_Omni_Tracker.domino|@_UNI11_020_Roasted_BullOnFire|1525117916", "1525117916", "_UNI11_020_Roasted_BullOnFire", "box_OutputOrder_v2_9.Out", "box_Delay_v5_6.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
end;

function export:f_box_OutputOrder_v2_9_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Strings_11();
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_Omni_Tracker.domino|@_UNI11_020_Roasted_BullOnFire|255479429", "255479429", "_UNI11_020_Roasted_BullOnFire", "box_OutputOrder_v2_9.Out", "box_Compare_Strings_11.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Gate_v3_12_Out()
    local params, l0, l1;
    params = self:OnEnter_box_HealthListener_v6_3();
    l0 = self.box_Gate_v3_12;
    l1 = self.box_HealthListener_v6_3;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_Omni_Tracker.domino|@_UNI11_020_Roasted_BullOnFire|516374796", "516374796", "_UNI11_020_Roasted_BullOnFire", "box_Gate_v3_12.Out", "box_HealthListener_v6_3.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_SetLootGroup_7_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_20();
    l0 = self.box_SetLootGroup_7;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_Omni_Tracker.domino|@_UNI11_020_Roasted_BullOnFire|1506033939", "1506033939", "_UNI11_020_Roasted_BullOnFire", "box_SetLootGroup_7.Out", "box_OutputOrder_v2_20.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Switch_19_Output_0()
    local params, l0, l1;
    params = self:OnEnter_box__UNI11_020_CollectMarkers_26();
    l0 = self.box_Switch_19;
    l1 = self.box__UNI11_020_CollectMarkers_26;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_Omni_Tracker.domino|@_UNI11_020_Roasted_BullOnFire|1107654585", "1107654585", "_UNI11_020_Roasted_BullOnFire", "box_Switch_19.Output", "box__UNI11_020_CollectMarkers_26.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_Switch_19_Output_1()
    local params, l0, l1;
    params = self:OnEnter_box__UNI11_020_CollectMarkers_21();
    l0 = self.box_Switch_19;
    l1 = self.box__UNI11_020_CollectMarkers_21;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_Omni_Tracker.domino|@_UNI11_020_Roasted_BullOnFire|663242761", "663242761", "_UNI11_020_Roasted_BullOnFire", "box_Switch_19.Output", "box__UNI11_020_CollectMarkers_21.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_Switch_19_Output_2()
    local params, l0, l1;
    params = self:OnEnter_box__UNI11_020_CollectMarkers_25();
    l0 = self.box_Switch_19;
    l1 = self.box__UNI11_020_CollectMarkers_25;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_Omni_Tracker.domino|@_UNI11_020_Roasted_BullOnFire|335996318", "335996318", "_UNI11_020_Roasted_BullOnFire", "box_Switch_19.Output", "box__UNI11_020_CollectMarkers_25.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_Switch_19_Output_3()
    local params, l0, l1;
    params = self:OnEnter_box__UNI11_020_CollectMarkers_24();
    l0 = self.box_Switch_19;
    l1 = self.box__UNI11_020_CollectMarkers_24;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_Omni_Tracker.domino|@_UNI11_020_Roasted_BullOnFire|132213846", "132213846", "_UNI11_020_Roasted_BullOnFire", "box_Switch_19.Output", "box__UNI11_020_CollectMarkers_24.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_Switch_19_Output_4()
    local params, l0, l1;
    params = self:OnEnter_box__UNI11_020_CollectMarkers_28();
    l0 = self.box_Switch_19;
    l1 = self.box__UNI11_020_CollectMarkers_28;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_Omni_Tracker.domino|@_UNI11_020_Roasted_BullOnFire|1337185846", "1337185846", "_UNI11_020_Roasted_BullOnFire", "box_Switch_19.Output", "box__UNI11_020_CollectMarkers_28.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_Switch_19_Output_5()
    local params, l0, l1;
    params = self:OnEnter_box__UNI11_020_CollectMarkers_30();
    l0 = self.box_Switch_19;
    l1 = self.box__UNI11_020_CollectMarkers_30;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_Omni_Tracker.domino|@_UNI11_020_Roasted_BullOnFire|393430952", "393430952", "_UNI11_020_Roasted_BullOnFire", "box_Switch_19.Output", "box__UNI11_020_CollectMarkers_30.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_Switch_19_Output_6()
    local params, l0, l1;
    params = self:OnEnter_box__UNI11_020_CollectMarkers_27();
    l0 = self.box_Switch_19;
    l1 = self.box__UNI11_020_CollectMarkers_27;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_Omni_Tracker.domino|@_UNI11_020_Roasted_BullOnFire|514040043", "514040043", "_UNI11_020_Roasted_BullOnFire", "box_Switch_19.Output", "box__UNI11_020_CollectMarkers_27.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_Switch_19_Output_7()
    local params, l0, l1;
    params = self:OnEnter_box__UNI11_020_CollectMarkers_16();
    l0 = self.box_Switch_19;
    l1 = self.box__UNI11_020_CollectMarkers_16;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_Omni_Tracker.domino|@_UNI11_020_Roasted_BullOnFire|971299329", "971299329", "_UNI11_020_Roasted_BullOnFire", "box_Switch_19.Output", "box__UNI11_020_CollectMarkers_16.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_Switch_19_Output_8()
    local params, l0, l1;
    params = self:OnEnter_box__UNI11_020_CollectMarkers_17();
    l0 = self.box_Switch_19;
    l1 = self.box__UNI11_020_CollectMarkers_17;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_Omni_Tracker.domino|@_UNI11_020_Roasted_BullOnFire|1318446098", "1318446098", "_UNI11_020_Roasted_BullOnFire", "box_Switch_19.Output", "box__UNI11_020_CollectMarkers_17.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_Switch_19_Output_9()
    local params, l0, l1;
    params = self:OnEnter_box__UNI11_020_CollectMarkers_23();
    l0 = self.box_Switch_19;
    l1 = self.box__UNI11_020_CollectMarkers_23;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_Omni_Tracker.domino|@_UNI11_020_Roasted_BullOnFire|1295358310", "1295358310", "_UNI11_020_Roasted_BullOnFire", "box_Switch_19.Output", "box__UNI11_020_CollectMarkers_23.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_Compare_Strings_11_A_eq_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_15();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_Omni_Tracker.domino|@_UNI11_020_Roasted_BullOnFire|2111907504", "2111907504", "_UNI11_020_Roasted_BullOnFire", "box_Compare_Strings_11.A_eq_B", "box_Simple_Node_15.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Strings_11_A_neq_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetLootGroup_7();
    l0 = self.box_SetLootGroup_7;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_Omni_Tracker.domino|@_UNI11_020_Roasted_BullOnFire|796526231", "796526231", "_UNI11_020_Roasted_BullOnFire", "box_Compare_Strings_11.A_neq_B", "box_SetLootGroup_7.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_HealthModifier_v2_8_Damaged()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/HealthModifier_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_5();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_Omni_Tracker.domino|@_UNI11_020_Roasted_BullOnFire|82061599", "82061599", "_UNI11_020_Roasted_BullOnFire", "box_HealthModifier_v2_8.Damaged", "box_Simple_Node_5.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GroupSizeListener_v5_22_Enabled()
    self:OnExit_box_GroupSizeListener_v5_22_Enabled();
end;

function export:f_box_GroupSizeListener_v5_22_MemberAdded()
    local params, l0, l1;
    self:OnExit_box_GroupSizeListener_v5_22_MemberAdded();
    params = self:OnEnter_box_Switch_19();
    l0 = self.box_GroupSizeListener_v5_22;
    l1 = self.box_Switch_19;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_Omni_Tracker.domino|@_UNI11_020_Roasted_BullOnFire|1156523608", "1156523608", "_UNI11_020_Roasted_BullOnFire", "box_GroupSizeListener_v5_22.MemberAdded", "box_Switch_19.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_GroupSizeListener_v5_22_MemberRemoved()
    local params, l0, l1;
    self:OnExit_box_GroupSizeListener_v5_22_MemberRemoved();
    params = self:OnEnter_box_Simple_Node_32();
    l0 = self.box_GroupSizeListener_v5_22;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_Omni_Tracker.domino|@_UNI11_020_Roasted_BullOnFire|1313623122", "1313623122", "_UNI11_020_Roasted_BullOnFire", "box_GroupSizeListener_v5_22.MemberRemoved", "box_Simple_Node_32.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_IndexList_v2_29_Output_0()
    local params, l0, l1;
    params = self:OnEnter_box__UNI11_020_CollectMarkers_26();
    l0 = self.box_IndexList_v2_29;
    l1 = self.box__UNI11_020_CollectMarkers_26;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_Omni_Tracker.domino|@_UNI11_020_Roasted_BullOnFire|1323923421", "1323923421", "_UNI11_020_Roasted_BullOnFire", "box_IndexList_v2_29.Output", "box__UNI11_020_CollectMarkers_26.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_IndexList_v2_29_Output_1()
    local params, l0, l1;
    params = self:OnEnter_box__UNI11_020_CollectMarkers_21();
    l0 = self.box_IndexList_v2_29;
    l1 = self.box__UNI11_020_CollectMarkers_21;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_Omni_Tracker.domino|@_UNI11_020_Roasted_BullOnFire|1317000601", "1317000601", "_UNI11_020_Roasted_BullOnFire", "box_IndexList_v2_29.Output", "box__UNI11_020_CollectMarkers_21.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_IndexList_v2_29_Output_2()
    local params, l0, l1;
    params = self:OnEnter_box__UNI11_020_CollectMarkers_25();
    l0 = self.box_IndexList_v2_29;
    l1 = self.box__UNI11_020_CollectMarkers_25;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_Omni_Tracker.domino|@_UNI11_020_Roasted_BullOnFire|1609746210", "1609746210", "_UNI11_020_Roasted_BullOnFire", "box_IndexList_v2_29.Output", "box__UNI11_020_CollectMarkers_25.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_IndexList_v2_29_Output_3()
    local params, l0, l1;
    params = self:OnEnter_box__UNI11_020_CollectMarkers_24();
    l0 = self.box_IndexList_v2_29;
    l1 = self.box__UNI11_020_CollectMarkers_24;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_Omni_Tracker.domino|@_UNI11_020_Roasted_BullOnFire|1940013415", "1940013415", "_UNI11_020_Roasted_BullOnFire", "box_IndexList_v2_29.Output", "box__UNI11_020_CollectMarkers_24.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_IndexList_v2_29_Output_4()
    local params, l0, l1;
    params = self:OnEnter_box__UNI11_020_CollectMarkers_28();
    l0 = self.box_IndexList_v2_29;
    l1 = self.box__UNI11_020_CollectMarkers_28;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_Omni_Tracker.domino|@_UNI11_020_Roasted_BullOnFire|961277160", "961277160", "_UNI11_020_Roasted_BullOnFire", "box_IndexList_v2_29.Output", "box__UNI11_020_CollectMarkers_28.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_IndexList_v2_29_Output_5()
    local params, l0, l1;
    params = self:OnEnter_box__UNI11_020_CollectMarkers_30();
    l0 = self.box_IndexList_v2_29;
    l1 = self.box__UNI11_020_CollectMarkers_30;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_Omni_Tracker.domino|@_UNI11_020_Roasted_BullOnFire|708456304", "708456304", "_UNI11_020_Roasted_BullOnFire", "box_IndexList_v2_29.Output", "box__UNI11_020_CollectMarkers_30.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_IndexList_v2_29_Output_6()
    local params, l0, l1;
    params = self:OnEnter_box__UNI11_020_CollectMarkers_27();
    l0 = self.box_IndexList_v2_29;
    l1 = self.box__UNI11_020_CollectMarkers_27;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_Omni_Tracker.domino|@_UNI11_020_Roasted_BullOnFire|1144029251", "1144029251", "_UNI11_020_Roasted_BullOnFire", "box_IndexList_v2_29.Output", "box__UNI11_020_CollectMarkers_27.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_IndexList_v2_29_Output_7()
    local params, l0, l1;
    params = self:OnEnter_box__UNI11_020_CollectMarkers_16();
    l0 = self.box_IndexList_v2_29;
    l1 = self.box__UNI11_020_CollectMarkers_16;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_Omni_Tracker.domino|@_UNI11_020_Roasted_BullOnFire|209737412", "209737412", "_UNI11_020_Roasted_BullOnFire", "box_IndexList_v2_29.Output", "box__UNI11_020_CollectMarkers_16.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_IndexList_v2_29_Output_8()
    local params, l0, l1;
    params = self:OnEnter_box__UNI11_020_CollectMarkers_17();
    l0 = self.box_IndexList_v2_29;
    l1 = self.box__UNI11_020_CollectMarkers_17;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_Omni_Tracker.domino|@_UNI11_020_Roasted_BullOnFire|113757647", "113757647", "_UNI11_020_Roasted_BullOnFire", "box_IndexList_v2_29.Output", "box__UNI11_020_CollectMarkers_17.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_IndexList_v2_29_Output_9()
    local params, l0, l1;
    params = self:OnEnter_box__UNI11_020_CollectMarkers_23();
    l0 = self.box_IndexList_v2_29;
    l1 = self.box__UNI11_020_CollectMarkers_23;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_Omni_Tracker.domino|@_UNI11_020_Roasted_BullOnFire|938224081", "938224081", "_UNI11_020_Roasted_BullOnFire", "box_IndexList_v2_29.Output", "box__UNI11_020_CollectMarkers_23.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_OnceOnly_v3_31_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_GroupSizeListener_v5_22();
    l0 = self.box_OnceOnly_v3_31;
    l1 = self.box_GroupSizeListener_v5_22;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_Omni_Tracker.domino|@_UNI11_020_Roasted_BullOnFire|1039755934", "1039755934", "_UNI11_020_Roasted_BullOnFire", "box_OnceOnly_v3_31.Out", "box_GroupSizeListener_v5_22.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_HealthListener_v6_3_Damaged()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Strings_2();
    l0 = self.box_HealthListener_v6_3;
    l1 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_Omni_Tracker.domino|@_UNI11_020_Roasted_BullOnFire|228960311", "228960311", "_UNI11_020_Roasted_BullOnFire", "box_HealthListener_v6_3.Damaged", "box_Compare_Strings_2.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_20_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_OnceOnly_v3_31;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_Omni_Tracker.domino|@_UNI11_020_Roasted_BullOnFire|1278563037", "1278563037", "_UNI11_020_Roasted_BullOnFire", "box_OutputOrder_v2_20.Out", "box_OnceOnly_v3_31.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_20_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GroupAddToGroup_v2_18();
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/GroupAddToGroup_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_Omni_Tracker.domino|@_UNI11_020_Roasted_BullOnFire|1773557463", "1773557463", "_UNI11_020_Roasted_BullOnFire", "box_OutputOrder_v2_20.Out", "box_GroupAddToGroup_v2_18.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GroupAddToGroup_v2_18_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/GroupAddToGroup_v2.lua")];
    local clone = l0;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_Omni_Tracker.domino|@_UNI11_020_Roasted_BullOnFire|2058399813", "2058399813", "_UNI11_020_Roasted_BullOnFire", "box_GroupAddToGroup_v2_18.Out", "BullKilled", clone:GetLuaBox(), self);
    self:BullKilled();
end;

function export:f_box_Delay_v5_6_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_12();
    l0 = self.box_Delay_v5_6;
    l1 = self.box_Gate_v3_12;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_Omni_Tracker.domino|@_UNI11_020_Roasted_BullOnFire|837147911", "837147911", "_UNI11_020_Roasted_BullOnFire", "box_Delay_v5_6.TimeElapsed", "box_Gate_v3_12.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:OnEnter_box_Simple_Node_14()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_14");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_Omni_Tracker.domino|@_UNI11_020_Roasted_BullOnFire|@n_CleanUp");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_14_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_4");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_Omni_Tracker.domino|@_UNI11_020_Roasted_BullOnFire|114914755");
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
                [0] = self.f_box_OutputOrder_v2_4_Out_0,
                [1] = self.f_box_OutputOrder_v2_4_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box__UNI11_020_CollectMarkers_27()
    local params, l0;
    l0 = self.box_GroupSizeListener_v5_22;
    params = {
        -- e_Bull,
        [0] = l0:GetDataOutValue(0),
        -- e_CollectMarker,
        [1] = "2104657558441573844",
        -- o_CollectObjective,
        [2] = {
            section = "Objectives",
            item = "UNI11_020_B30_OBJ_Burned_Loot",
            id = "426274",
        },
    };
    return params;
end;

function export:OnEnter_box__UNI11_020_CollectMarkers_16()
    local params, l0;
    l0 = self.box_GroupSizeListener_v5_22;
    params = {
        -- e_Bull,
        [0] = l0:GetDataOutValue(0),
        -- e_CollectMarker,
        [1] = "2104657558441573840",
        -- o_CollectObjective,
        [2] = {
            section = "Objectives",
            item = "UNI11_020_B30_OBJ_Burned_Loot",
            id = "426274",
        },
    };
    return params;
end;

function export:OnEnter_box__UNI11_020_CollectMarkers_28()
    local params, l0;
    l0 = self.box_GroupSizeListener_v5_22;
    params = {
        -- e_Bull,
        [0] = l0:GetDataOutValue(0),
        -- e_CollectMarker,
        [1] = "2104657558439476676",
        -- o_CollectObjective,
        [2] = {
            section = "Objectives",
            item = "UNI11_020_B30_OBJ_Burned_Loot",
            id = "426274",
        },
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_5");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_Omni_Tracker.domino|@_UNI11_020_Roasted_BullOnFire|939191274");
    l0:SetConnections({
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box__UNI11_020_CollectMarkers_25()
    local params, l0;
    l0 = self.box_GroupSizeListener_v5_22;
    params = {
        -- e_Bull,
        [0] = l0:GetDataOutValue(0),
        -- e_CollectMarker,
        [1] = "2104657558437379516",
        -- o_CollectObjective,
        [2] = {
            section = "Objectives",
            item = "UNI11_020_B30_OBJ_Burned_Loot",
            id = "426274",
        },
    };
    return params;
end;

function export:OnEnter_box_Compare_Strings_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Strings_2");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_Omni_Tracker.domino|@_UNI11_020_Roasted_BullOnFire|962093677");
    l0:SetConnections({
        -- A_eq_B,
        [1] = self.f_box_Compare_Strings_2_A_eq_B,
    });
    l0 = self.box_HealthListener_v6_3;
    params = {
        -- A,
        [0] = l0:GetDataOutValue(5),
        -- B,
        [1] = "FirePropagation",
        -- IgnoreCase,
        [2] = false,
    };
    return params;
end;

function export:OnEnter_box_HealthListener_v6_10()
    local params;
    params = {
        -- AutoDisable,
        [0] = false,
        -- pawns,
        [1] = self.e_BullOnFire,
    };
    return params;
end;

function export:OnEnter_box_GroupAddToGroup_v2_13()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/GroupAddToGroup_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GroupAddToGroup_v2_13");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_Omni_Tracker.domino|@_UNI11_020_Roasted_BullOnFire|986900004");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GroupAddToGroup_v2_13_Out,
    });
    params = {
        -- FromGroup,
        [0] = self.e_BullOnFire,
        -- ToGroup,
        [1] = "#E6172100",
    };
    return params;
end;

function export:OnEnter_box__UNI11_020_CollectMarkers_21()
    local params, l0;
    l0 = self.box_GroupSizeListener_v5_22;
    params = {
        -- e_Bull,
        [0] = l0:GetDataOutValue(0),
        -- e_CollectMarker,
        [1] = "2104657558437379512",
        -- o_CollectObjective,
        [2] = {
            section = "Objectives",
            item = "UNI11_020_B30_OBJ_Burned_Loot",
            id = "426274",
        },
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_9()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_9");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_Omni_Tracker.domino|@_UNI11_020_Roasted_BullOnFire|996161973");
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
                [0] = self.f_box_OutputOrder_v2_9_Out_0,
                [1] = self.f_box_OutputOrder_v2_9_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_12()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_SetLootGroup_7()
    local params;
    params = {
        -- LootGroup,
        [0] = "9015271174794006",
        -- Targets,
        [1] = self.e_BullOnFire,
    };
    return params;
end;

function export:OnEnter_box_Switch_19()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_Compare_Strings_11()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Strings_11");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_Omni_Tracker.domino|@_UNI11_020_Roasted_BullOnFire|1175906848");
    l0:SetConnections({
        -- A_eq_B,
        [1] = self.f_box_Compare_Strings_11_A_eq_B,
        -- A_neq_B,
        [3] = self.f_box_Compare_Strings_11_A_neq_B,
    });
    l0 = self.box_HealthListener_v6_10;
    params = {
        -- A,
        [0] = l0:GetDataOutValue(5),
        -- B,
        [1] = "Mulcher",
        -- IgnoreCase,
        [2] = false,
    };
    return params;
end;

function export:OnEnter_box_HealthModifier_v2_8()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/HealthModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_HealthModifier_v2_8");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_Omni_Tracker.domino|@_UNI11_020_Roasted_BullOnFire|1189986662");
    l0:SetConnections({
        -- Damaged,
        [0] = self.f_box_HealthModifier_v2_8_Damaged,
    });
    params = {
        -- damageWithStim,
        [0] = 7,
        -- pawns,
        [2] = self.e_BullOnFire,
        -- value,
        [3] = 100000,
    };
    return params;
end;

function export:OnEnter_box_GroupSizeListener_v5_22()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- group,
        [1] = "#4973BF5B",
    };
    return params;
end;

function export:OnEnter_box__UNI11_020_CollectMarkers_30()
    local params, l0;
    l0 = self.box_GroupSizeListener_v5_22;
    params = {
        -- e_Bull,
        [0] = l0:GetDataOutValue(0),
        -- e_CollectMarker,
        [1] = "2104657558441573848",
        -- o_CollectObjective,
        [2] = {
            section = "Objectives",
            item = "UNI11_020_B30_OBJ_Burned_Loot",
            id = "426274",
        },
    };
    return params;
end;

function export:OnEnter_box_IndexList_v2_29()
    local params;
    params = {
        -- Index,
        [0] = self.i_MarkedBurned,
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_32()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_32");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_Omni_Tracker.domino|@_UNI11_020_Roasted_BullOnFire|1473712736");
    l0:SetConnections({
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_HealthListener_v6_3()
    local params;
    params = {
        -- AutoDisable,
        [0] = false,
        -- pawns,
        [1] = self.e_BullOnFire,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_20()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_20");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_Omni_Tracker.domino|@_UNI11_020_Roasted_BullOnFire|1615033700");
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

function export:OnEnter_box__UNI11_020_CollectMarkers_24()
    local params, l0;
    l0 = self.box_GroupSizeListener_v5_22;
    params = {
        -- e_Bull,
        [0] = l0:GetDataOutValue(0),
        -- e_CollectMarker,
        [1] = "2104657558439476672",
        -- o_CollectObjective,
        [2] = {
            section = "Objectives",
            item = "UNI11_020_B30_OBJ_Burned_Loot",
            id = "426274",
        },
    };
    return params;
end;

function export:OnEnter_box_GroupAddToGroup_v2_18()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/GroupAddToGroup_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GroupAddToGroup_v2_18");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_Omni_Tracker.domino|@_UNI11_020_Roasted_BullOnFire|1654442416");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GroupAddToGroup_v2_18_Out,
    });
    params = {
        -- FromGroup,
        [0] = self.e_BullOnFire,
        -- ToGroup,
        [1] = "#4973BF5B",
    };
    return params;
end;

function export:OnEnter_box__UNI11_020_CollectMarkers_23()
    local params, l0;
    l0 = self.box_GroupSizeListener_v5_22;
    params = {
        -- e_Bull,
        [0] = l0:GetDataOutValue(0),
        -- e_CollectMarker,
        [1] = "2104657558439476680",
        -- o_CollectObjective,
        [2] = {
            section = "Objectives",
            item = "UNI11_020_B30_OBJ_Burned_Loot",
            id = "426274",
        },
    };
    return params;
end;

function export:OnEnter_box__UNI11_020_CollectMarkers_26()
    local params, l0;
    l0 = self.box_GroupSizeListener_v5_22;
    params = {
        -- e_Bull,
        [0] = l0:GetDataOutValue(0),
        -- e_CollectMarker,
        [1] = "2104657558437379508",
        -- o_CollectObjective,
        [2] = {
            section = "Objectives",
            item = "UNI11_020_B30_OBJ_Burned_Loot",
            id = "426274",
        },
    };
    return params;
end;

function export:OnEnter_box__UNI11_020_CollectMarkers_17()
    local params, l0;
    l0 = self.box_GroupSizeListener_v5_22;
    params = {
        -- e_Bull,
        [0] = l0:GetDataOutValue(0),
        -- e_CollectMarker,
        [1] = "2104657558441573836",
        -- o_CollectObjective,
        [2] = {
            section = "Objectives",
            item = "UNI11_020_B30_OBJ_Burned_Loot",
            id = "426274",
        },
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_15()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_15");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_Omni_Tracker.domino|@_UNI11_020_Roasted_BullOnFire|1812070962");
    l0:SetConnections({
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

function export:OnExit_box_GroupSizeListener_v5_22_Enabled()
    local l0;
    l0 = self.box_GroupSizeListener_v5_22;
    self.i_MarkedBurned = l0:GetDataOutValue(1);
end;

function export:OnExit_box_GroupSizeListener_v5_22_MemberAdded()
    local l0, l1;
    l0 = self.box_GroupSizeListener_v5_22;
    self.i_MarkedBurned = l0:GetDataOutValue(1);
    l1 = self.box__UNI11_020_CollectMarkers_28;
    l1:GetLuaBox().e_Bull = l0:GetDataOutValue(0);
    l1 = self.box__UNI11_020_CollectMarkers_16;
    l1:GetLuaBox().e_Bull = l0:GetDataOutValue(0);
    l1 = self.box__UNI11_020_CollectMarkers_17;
    l1:GetLuaBox().e_Bull = l0:GetDataOutValue(0);
    l1 = self.box__UNI11_020_CollectMarkers_27;
    l1:GetLuaBox().e_Bull = l0:GetDataOutValue(0);
    l1 = self.box__UNI11_020_CollectMarkers_26;
    l1:GetLuaBox().e_Bull = l0:GetDataOutValue(0);
    l1 = self.box__UNI11_020_CollectMarkers_30;
    l1:GetLuaBox().e_Bull = l0:GetDataOutValue(0);
    l1 = self.box__UNI11_020_CollectMarkers_23;
    l1:GetLuaBox().e_Bull = l0:GetDataOutValue(0);
    l1 = self.box__UNI11_020_CollectMarkers_21;
    l1:GetLuaBox().e_Bull = l0:GetDataOutValue(0);
    l1 = self.box__UNI11_020_CollectMarkers_24;
    l1:GetLuaBox().e_Bull = l0:GetDataOutValue(0);
    l1 = self.box__UNI11_020_CollectMarkers_25;
    l1:GetLuaBox().e_Bull = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GroupSizeListener_v5_22_MemberRemoved()
    local l0, l1;
    l0 = self.box_GroupSizeListener_v5_22;
    self.i_MarkedBurned = l0:GetDataOutValue(1);
    l1 = self.box__UNI11_020_CollectMarkers_28;
    l1:GetLuaBox().e_Bull = l0:GetDataOutValue(0);
    l1 = self.box__UNI11_020_CollectMarkers_16;
    l1:GetLuaBox().e_Bull = l0:GetDataOutValue(0);
    l1 = self.box__UNI11_020_CollectMarkers_17;
    l1:GetLuaBox().e_Bull = l0:GetDataOutValue(0);
    l1 = self.box__UNI11_020_CollectMarkers_27;
    l1:GetLuaBox().e_Bull = l0:GetDataOutValue(0);
    l1 = self.box__UNI11_020_CollectMarkers_26;
    l1:GetLuaBox().e_Bull = l0:GetDataOutValue(0);
    l1 = self.box__UNI11_020_CollectMarkers_30;
    l1:GetLuaBox().e_Bull = l0:GetDataOutValue(0);
    l1 = self.box__UNI11_020_CollectMarkers_23;
    l1:GetLuaBox().e_Bull = l0:GetDataOutValue(0);
    l1 = self.box__UNI11_020_CollectMarkers_21;
    l1:GetLuaBox().e_Bull = l0:GetDataOutValue(0);
    l1 = self.box__UNI11_020_CollectMarkers_24;
    l1:GetLuaBox().e_Bull = l0:GetDataOutValue(0);
    l1 = self.box__UNI11_020_CollectMarkers_25;
    l1:GetLuaBox().e_Bull = l0:GetDataOutValue(0);
end;

-- Empty out anchor definitions
function export:BullKilled()
    
end;
_compilerVersion = 60;
<DominoMetadata IsStateless="0" IsSystem="0">
	<ControlsIn>
		<ControlIn Name="Disable" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
		<ControlIn Name="Enable" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
	</ControlsIn>
	<ControlsOut>
		<ControlOut Name="BullKilled" AnchorDynType="0" IsDelayed="0" />
	</ControlsOut>
	<DatasIn>
		<DataIn Name="e_BullOnFire" AnchorDynType="0" DataTypeID="entity" />
	</DatasIn>
	<DatasOut />
</DominoMetadata>
