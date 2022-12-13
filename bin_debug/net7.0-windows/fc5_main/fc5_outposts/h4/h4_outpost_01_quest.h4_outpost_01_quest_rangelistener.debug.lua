LUACh% -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc5_main/fc5_outposts/h4/h4_outpost_01_quest.domino
-- User graph: H4_Outpost_01_QUEST_RangeListener
-- 
-- 
-- DO NOT EDIT MANUALLY THIS FILE OR YOUR CHANGES WILL BE LOST!
-- Please modify the original Domino script instead. You have been warned.

-- *** SCRIPT INPUT REFLECTION ***
--[[
<InputReflection>
    <DataIn Name="eInBreakable09" Type="Nomad|entity{}" />
    <DataIn Name="eInBreakable05" Type="Nomad|entity{}" />
    <DataIn Name="eInBreakable01" Type="Nomad|entity{}" />
    <DataIn Name="eInBreakable06" Type="Nomad|entity{}" />
    <DataIn Name="eInBreakable10" Type="Nomad|entity{}" />
    <DataIn Name="eInBreakable08" Type="Nomad|entity{}" />
    <DataIn Name="eInBreakable03" Type="Nomad|entity{}" />
    <DataIn Name="eInBreakable07" Type="Nomad|entity{}" />
    <DataIn Name="eInBreakable04" Type="Nomad|entity{}" />
    <DataIn Name="eInBreakable02" Type="Nomad|entity{}" />
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
        cboxRes:RegisterBox("Domino/System/Coop/Group/AddToGroupFromList_v2.lua");
        cboxRes:RegisterBox("Domino/System/EntityStatusListener.lua");
        cboxRes:RegisterBox("Domino/System/IsEntityLoaded_v3.lua");
        cboxRes:RegisterBox("Domino/System/IsValueNil_v3.lua");
        cboxRes:RegisterBox("Domino/System/ListWriter_v2.lua");
        cboxRes:RegisterBox("Domino/System/MetaBreakableModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/MultipleAND_v2.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/SetEntity_v2.lua");
        cboxRes:RegisterBox("Domino/user/FC5_main/FC5_Outposts/H4/H4_Outpost_01_Quest.TargetListener.debug.lua");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/FC5_main/FC5_Outposts/H4/H4_Outpost_01_Quest.H4_Outpost_01_QUEST_RangeListener.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "DisableListener",
            },
            [1] = {
                name = "Enable",
            },
            [2] = {
                name = "SetDamagable",
            },
            [3] = {
                name = "SetUndamageable",
            },
        },
        controlInCount = 4,
        controlOut = {
            [0] = {
                name = "Damageable",
                delayed = false,
            },
            [1] = {
                name = "Destroyed",
                delayed = false,
            },
            [2] = {
                name = "Enabled",
                delayed = false,
            },
            [3] = {
                name = "Undamageable",
                delayed = false,
            },
        },
        controlOutCount = 4,
        dataIn = {
            [0] = {
                name = "eInBreakable01",
                type = "entity",
            },
            [1] = {
                name = "eInBreakable02",
                type = "entity",
            },
            [2] = {
                name = "eInBreakable03",
                type = "entity",
            },
            [3] = {
                name = "eInBreakable04",
                type = "entity",
            },
            [4] = {
                name = "eInBreakable05",
                type = "entity",
            },
            [5] = {
                name = "eInBreakable06",
                type = "entity",
            },
            [6] = {
                name = "eInBreakable07",
                type = "entity",
            },
            [7] = {
                name = "eInBreakable08",
                type = "entity",
            },
            [8] = {
                name = "eInBreakable09",
                type = "entity",
            },
            [9] = {
                name = "eInBreakable10",
                type = "entity",
            },
        },
        dataInCount = 10,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/Coop/Group/AddToGroupFromList_v2.lua")] = {
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
                name = "Group",
                type = "group",
            },
            [1] = {
                name = "Pawns",
                type = "list",
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
    metadataTable[GetPathID("Domino/System/IsEntityLoaded_v3.lua")] = {
        stateless = true,
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
                name = "entityId",
                type = "entity",
            },
        },
        dataInCount = 1,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/IsValueNil_v3.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "Animation",
            },
            [1] = {
                name = "Archetype",
            },
            [2] = {
                name = "Boolean",
            },
            [3] = {
                name = "Database",
            },
            [4] = {
                name = "Entity",
            },
            [5] = {
                name = "Float",
            },
            [6] = {
                name = "GenericDb",
            },
            [7] = {
                name = "Group",
            },
            [8] = {
                name = "Integer",
            },
            [9] = {
                name = "MissionBlock",
            },
            [10] = {
                name = "MissionBlockLayer",
            },
            [11] = {
                name = "Oasis",
            },
            [12] = {
                name = "Script",
            },
            [13] = {
                name = "Sound",
            },
            [14] = {
                name = "String",
            },
        },
        controlInCount = 15,
        controlOut = {
            [0] = {
                name = "No",
                delayed = false,
            },
            [1] = {
                name = "Yes",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "anim",
                type = "animation",
            },
            [1] = {
                name = "archetypeId",
                type = "archetype",
            },
            [2] = {
                name = "bool",
                type = "bool",
            },
            [3] = {
                name = "databaseId",
                type = "database",
            },
            [4] = {
                name = "ent",
                type = "entity",
            },
            [5] = {
                name = "float",
                type = "float",
            },
            [6] = {
                name = "genericDbId",
                type = "genericdb",
            },
            [7] = {
                name = "group",
                type = "group",
            },
            [8] = {
                name = "int",
                type = "int",
            },
            [9] = {
                name = "missionBlockId",
                type = "missionblock",
            },
            [10] = {
                name = "missionBlockLayerId",
                type = "missionblocklayer",
            },
            [11] = {
                name = "oasis",
                type = "oasis",
            },
            [12] = {
                name = "script",
                type = "boxclass",
            },
            [13] = {
                name = "sound",
                type = "Sound",
            },
            [14] = {
                name = "str",
                type = "string",
            },
        },
        dataInCount = 15,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/ListWriter_v2.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "Add",
            },
            [1] = {
                name = "Remove",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "Added",
                delayed = false,
            },
            [1] = {
                name = "Removed",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "Data",
                type = "entity",
            },
            [1] = {
                name = "Index",
                type = "int",
            },
            [2] = {
                name = "Input",
                type = "list",
            },
        },
        dataInCount = 3,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/MetaBreakableModifier_v2.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "SetDamageable",
            },
            [1] = {
                name = "SetDisabled",
            },
            [2] = {
                name = "SetEnabled",
            },
            [3] = {
                name = "SetUnDamageable",
            },
        },
        controlInCount = 4,
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
                name = "OnSetDamageable",
                delayed = false,
            },
            [3] = {
                name = "OnSetUnDamageable",
                delayed = false,
            },
        },
        controlOutCount = 4,
        dataIn = {
            [0] = {
                name = "targets",
                type = "group",
            },
        },
        dataInCount = 1,
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
    metadataTable[GetPathID("Domino/user/FC5_main/FC5_Outposts/H4/H4_Outpost_01_Quest.TargetListener.debug.lua")] = {
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
                name = "Target",
                type = "entity",
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
    self._name = "H4_Outpost_01_QUEST_RangeListener";
    self._elementPathId = "DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_RangeListener";
    self.Enabled = DummyFunction;
    self.Destroyed = DummyFunction;
    self.Undamageable = DummyFunction;
    self.Damageable = DummyFunction;
    self.eBreakTarget = nil;
    self.eDestroyedTarget = nil;
    self.lBreakables = {
    };
    self.eTarget01 = nil;
    self.eTarget02 = nil;
    self.eTarget03 = nil;
    self.eTarget04 = nil;
    self.eTarget05 = nil;
    self.eTarget06 = nil;
    self.eTarget07 = nil;
    self.eTarget08 = nil;
    self.eTarget09 = nil;
    self.eTarget10 = nil;
    self.box_EntityStatusListener_43 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_43;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_43");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_RangeListener|72149109");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_43_Loaded,
    });
    self.box_TargetListener_2 = cbox:CreateBox("Domino/user/FC5_main/FC5_Outposts/H4/H4_Outpost_01_Quest.TargetListener.debug.lua");
    l0 = self.box_TargetListener_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_TargetListener_2");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_RangeListener|106623110");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_TargetListener_2_Out,
    });
    self.box_MultipleAND_v2_47 = cbox:CreateBox("Domino/System/MultipleAND_v2.lua");
    l0 = self.box_MultipleAND_v2_47;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleAND_v2_47");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_RangeListener|112170904");
    l0:SetDynAnchorCount({
        controlIn = {
            [0] = 10,
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
        [0] = self.f_box_MultipleAND_v2_47_Out,
    });
    self.box_MetaBreakableModifier_v2_29 = cbox:CreateBox("Domino/System/MetaBreakableModifier_v2.lua");
    l0 = self.box_MetaBreakableModifier_v2_29;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MetaBreakableModifier_v2_29");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_RangeListener|123968130");
    l0:SetConnections({
        -- OnSetDamageable,
        [2] = self.f_box_MetaBreakableModifier_v2_29_OnSetDamageable,
        -- OnSetUnDamageable,
        [3] = self.f_box_MetaBreakableModifier_v2_29_OnSetUnDamageable,
    });
    self.box_MultipleOR_66 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_66;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_66");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_RangeListener|150083980");
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
        [0] = self.f_box_MultipleOR_66_Out,
    });
    self.box_TargetListener_27 = cbox:CreateBox("Domino/user/FC5_main/FC5_Outposts/H4/H4_Outpost_01_Quest.TargetListener.debug.lua");
    l0 = self.box_TargetListener_27;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_TargetListener_27");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_RangeListener|151110434");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_TargetListener_27_Out,
    });
    self.box_TargetListener_7 = cbox:CreateBox("Domino/user/FC5_main/FC5_Outposts/H4/H4_Outpost_01_Quest.TargetListener.debug.lua");
    l0 = self.box_TargetListener_7;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_TargetListener_7");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_RangeListener|157592873");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_TargetListener_7_Out,
    });
    self.box_EntityStatusListener_67 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_67;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_67");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_RangeListener|245909777");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_67_Loaded,
    });
    self.box_TargetListener_14 = cbox:CreateBox("Domino/user/FC5_main/FC5_Outposts/H4/H4_Outpost_01_Quest.TargetListener.debug.lua");
    l0 = self.box_TargetListener_14;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_TargetListener_14");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_RangeListener|379112632");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_TargetListener_14_Out,
    });
    self.box_MultipleOR_52 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_52;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_52");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_RangeListener|401859023");
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
        [0] = self.f_box_MultipleOR_52_Out,
    });
    self.box_MultipleOR_5 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_5;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_5");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_RangeListener|429022527");
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
    self.box_EntityStatusListener_24 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_24;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_24");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_RangeListener|465246572");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_24_Loaded,
    });
    self.box_MultipleOR_9 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_9;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_9");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_RangeListener|711514761");
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
    self.box_MultipleOR_55 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_55;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_55");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_RangeListener|780737875");
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
        [0] = self.f_box_MultipleOR_55_Out,
    });
    self.box_EntityStatusListener_22 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_22;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_22");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_RangeListener|911030817");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_22_Loaded,
    });
    self.box_MultipleOR_25 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_25;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_25");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_RangeListener|1052908221");
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
        [0] = self.f_box_MultipleOR_25_Out,
    });
    self.box_MultipleOR_51 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_51;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_51");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_RangeListener|1354002338");
    l0:SetDynAnchorCount({
        controlIn = {
            [0] = 10,
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
        [0] = self.f_box_MultipleOR_51_Out,
    });
    self.box_MultipleOR_70 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_70;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_70");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_RangeListener|1368871043");
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
        [0] = self.f_box_MultipleOR_70_Out,
    });
    self.box_EntityStatusListener_32 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_32;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_32");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_RangeListener|1386923623");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_32_Loaded,
    });
    self.box_MultipleOR_71 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_71;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_71");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_RangeListener|1454965410");
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
        [0] = self.f_box_MultipleOR_71_Out,
    });
    self.box_MultipleOR_82 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_82;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_82");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_RangeListener|1471782960");
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
        [0] = self.f_box_MultipleOR_82_Out,
    });
    self.box_TargetListener_46 = cbox:CreateBox("Domino/user/FC5_main/FC5_Outposts/H4/H4_Outpost_01_Quest.TargetListener.debug.lua");
    l0 = self.box_TargetListener_46;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_TargetListener_46");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_RangeListener|1472558526");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_TargetListener_46_Out,
    });
    self.box_TargetListener_26 = cbox:CreateBox("Domino/user/FC5_main/FC5_Outposts/H4/H4_Outpost_01_Quest.TargetListener.debug.lua");
    l0 = self.box_TargetListener_26;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_TargetListener_26");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_RangeListener|1486009799");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_TargetListener_26_Out,
    });
    self.box_TargetListener_10 = cbox:CreateBox("Domino/user/FC5_main/FC5_Outposts/H4/H4_Outpost_01_Quest.TargetListener.debug.lua");
    l0 = self.box_TargetListener_10;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_TargetListener_10");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_RangeListener|1509742231");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_TargetListener_10_Out,
    });
    self.box_EntityStatusListener_42 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_42;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_42");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_RangeListener|1545399921");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_42_Loaded,
    });
    self.box_EntityStatusListener_18 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_18;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_18");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_RangeListener|1718474233");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_18_Loaded,
    });
    self.box_EntityStatusListener_35 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_35;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_35");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_RangeListener|1725045303");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_35_Loaded,
    });
    self.box_TargetListener_36 = cbox:CreateBox("Domino/user/FC5_main/FC5_Outposts/H4/H4_Outpost_01_Quest.TargetListener.debug.lua");
    l0 = self.box_TargetListener_36;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_TargetListener_36");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_RangeListener|1799915749");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_TargetListener_36_Out,
    });
    self.box_TargetListener_20 = cbox:CreateBox("Domino/user/FC5_main/FC5_Outposts/H4/H4_Outpost_01_Quest.TargetListener.debug.lua");
    l0 = self.box_TargetListener_20;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_TargetListener_20");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_RangeListener|1815882038");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_TargetListener_20_Out,
    });
    self.box_EntityStatusListener_41 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_41;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_41");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_RangeListener|1896642356");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_41_Loaded,
    });
    self.box_TargetListener_13 = cbox:CreateBox("Domino/user/FC5_main/FC5_Outposts/H4/H4_Outpost_01_Quest.TargetListener.debug.lua");
    l0 = self.box_TargetListener_13;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_TargetListener_13");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_RangeListener|1940200807");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_TargetListener_13_Out,
    });
    self.box_EntityStatusListener_23 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_23;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_23");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_RangeListener|2019425579");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_23_Loaded,
    });
    self.box_MultipleOR_84 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_84;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_84");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_RangeListener|2041281950");
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
        [0] = self.f_box_MultipleOR_84_Out,
    });
    self.box_MultipleOR_37 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_37;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_37");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_RangeListener|2091970772");
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
end;

function export:DisableListener()
    local params, l0;
    params = self:OnEnter_box_OutputOrder_v2_90();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_RangeListener|1907649528", "1907649528", "H4_Outpost_01_QUEST_RangeListener", "DisableListener", "box_OutputOrder_v2_90.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:Enable()
    local params, l0;
    params = self:OnEnter_box_OutputOrder_v2_31();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_RangeListener|1636502246", "1636502246", "H4_Outpost_01_QUEST_RangeListener", "Enable", "box_OutputOrder_v2_31.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:SetDamagable()
    local params, l0;
    params = self:OnEnter_box_MetaBreakableModifier_v2_29();
    l0 = self.box_MetaBreakableModifier_v2_29;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_RangeListener|267341506", "267341506", "H4_Outpost_01_QUEST_RangeListener", "SetDamagable", "box_MetaBreakableModifier_v2_29.SetDamageable", self, l0:GetLuaBox());
    -- SetDamageable
    l0:Exec(0, params);
end;

function export:SetUndamageable()
    local l0;
    l0 = self.box_MultipleOR_52;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_RangeListener|1769247070", "1769247070", "H4_Outpost_01_QUEST_RangeListener", "SetUndamageable", "box_MultipleOR_52.Input", self, l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_90_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_TargetListener_10();
    l0 = self.box_TargetListener_10;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_RangeListener|262212175", "262212175", "H4_Outpost_01_QUEST_RangeListener", "box_OutputOrder_v2_90.Out", "box_TargetListener_10.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_90_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_TargetListener_13();
    l0 = self.box_TargetListener_13;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_RangeListener|1300984159", "1300984159", "H4_Outpost_01_QUEST_RangeListener", "box_OutputOrder_v2_90.Out", "box_TargetListener_13.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_90_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_TargetListener_2();
    l0 = self.box_TargetListener_2;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_RangeListener|666192636", "666192636", "H4_Outpost_01_QUEST_RangeListener", "box_OutputOrder_v2_90.Out", "box_TargetListener_2.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_90_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_TargetListener_7();
    l0 = self.box_TargetListener_7;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_RangeListener|1761627541", "1761627541", "H4_Outpost_01_QUEST_RangeListener", "box_OutputOrder_v2_90.Out", "box_TargetListener_7.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_90_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_TargetListener_14();
    l0 = self.box_TargetListener_14;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_RangeListener|1225050827", "1225050827", "H4_Outpost_01_QUEST_RangeListener", "box_OutputOrder_v2_90.Out", "box_TargetListener_14.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_90_Out_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_TargetListener_20();
    l0 = self.box_TargetListener_20;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_RangeListener|718736663", "718736663", "H4_Outpost_01_QUEST_RangeListener", "box_OutputOrder_v2_90.Out", "box_TargetListener_20.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_90_Out_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_TargetListener_26();
    l0 = self.box_TargetListener_26;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_RangeListener|1214834710", "1214834710", "H4_Outpost_01_QUEST_RangeListener", "box_OutputOrder_v2_90.Out", "box_TargetListener_26.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_90_Out_7()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_TargetListener_27();
    l0 = self.box_TargetListener_27;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_RangeListener|844256951", "844256951", "H4_Outpost_01_QUEST_RangeListener", "box_OutputOrder_v2_90.Out", "box_TargetListener_27.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_90_Out_8()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_TargetListener_36();
    l0 = self.box_TargetListener_36;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_RangeListener|2110882926", "2110882926", "H4_Outpost_01_QUEST_RangeListener", "box_OutputOrder_v2_90.Out", "box_TargetListener_36.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_90_Out_9()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_TargetListener_46();
    l0 = self.box_TargetListener_46;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_RangeListener|506008673", "506008673", "H4_Outpost_01_QUEST_RangeListener", "box_OutputOrder_v2_90.Out", "box_TargetListener_46.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_IsValueNil_v3_56_No()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsEntityLoaded_v3_19();
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_RangeListener|1767911967", "1767911967", "H4_Outpost_01_QUEST_RangeListener", "box_IsValueNil_v3_56.No", "box_IsEntityLoaded_v3_19.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_43_Loaded()
    local l0, l1;
    l0 = self.box_EntityStatusListener_43;
    l1 = self.box_MultipleOR_9;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_RangeListener|363491355", "363491355", "H4_Outpost_01_QUEST_RangeListener", "box_EntityStatusListener_43.Loaded", "box_MultipleOR_9.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_ListWriter_v2_6_Added()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ListWriter_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_47();
    l0 = self.box_MultipleAND_v2_47;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_RangeListener|211889801", "211889801", "H4_Outpost_01_QUEST_RangeListener", "box_ListWriter_v2_6.Added", "box_MultipleAND_v2_47.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 7);
end;

function export:f_box_TargetListener_2_Out()
    local l0, l1;
    l0 = self.box_TargetListener_2;
    l1 = self.box_MultipleOR_51;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_RangeListener|1559372132", "1559372132", "H4_Outpost_01_QUEST_RangeListener", "box_TargetListener_2.Out", "box_MultipleOR_51.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_IsValueNil_v3_17_No()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsEntityLoaded_v3_8();
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_RangeListener|454816072", "454816072", "H4_Outpost_01_QUEST_RangeListener", "box_IsValueNil_v3_17.No", "box_IsEntityLoaded_v3_8.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_45_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_49();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_RangeListener|969857503", "969857503", "H4_Outpost_01_QUEST_RangeListener", "box_OutputOrder_v2_45.Out", "box_OutputOrder_v2_49.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_45_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_RangeListener|1403136355", "1403136355", "H4_Outpost_01_QUEST_RangeListener", "box_OutputOrder_v2_45.Out", "Damageable", clone:GetLuaBox(), self);
    self:Damageable();
end;

function export:f_box_MultipleAND_v2_47_Out()
    local params, l0, l1;
    params = self:OnEnter_box_AddToGroupFromList_v2_77();
    l0 = self.box_MultipleAND_v2_47;
    l1 = Boxes[GetPathID("Domino/System/Coop/Group/AddToGroupFromList_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_RangeListener|699837276", "699837276", "H4_Outpost_01_QUEST_RangeListener", "box_MultipleAND_v2_47.Out", "box_AddToGroupFromList_v2_77.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_IsValueNil_v3_60_No()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsEntityLoaded_v3_75();
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_RangeListener|199508771", "199508771", "H4_Outpost_01_QUEST_RangeListener", "box_IsValueNil_v3_60.No", "box_IsEntityLoaded_v3_75.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MetaBreakableModifier_v2_29_OnSetDamageable()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_45();
    l0 = self.box_MetaBreakableModifier_v2_29;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_RangeListener|2061606327", "2061606327", "H4_Outpost_01_QUEST_RangeListener", "box_MetaBreakableModifier_v2_29.OnSetDamageable", "box_OutputOrder_v2_45.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MetaBreakableModifier_v2_29_OnSetUnDamageable()
    local l0;
    l0 = self.box_MetaBreakableModifier_v2_29;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_RangeListener|1376781507", "1376781507", "H4_Outpost_01_QUEST_RangeListener", "box_MetaBreakableModifier_v2_29.OnSetUnDamageable", "Undamageable", l0:GetLuaBox(), self);
    self:Undamageable();
end;

function export:f_box_ListWriter_v2_54_Added()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ListWriter_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_47();
    l0 = self.box_MultipleAND_v2_47;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_RangeListener|127660399", "127660399", "H4_Outpost_01_QUEST_RangeListener", "box_ListWriter_v2_54.Added", "box_MultipleAND_v2_47.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 2);
end;

function export:f_box_MultipleOR_66_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ListWriter_v2_73();
    l0 = self.box_MultipleOR_66;
    l1 = Boxes[GetPathID("Domino/System/ListWriter_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_RangeListener|1413524519", "1413524519", "H4_Outpost_01_QUEST_RangeListener", "box_MultipleOR_66.Out", "box_ListWriter_v2_73.Add", l0:GetLuaBox(), l1:GetLuaBox());
    -- Add
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_TargetListener_27_Out()
    local l0, l1;
    l0 = self.box_TargetListener_27;
    l1 = self.box_MultipleOR_51;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_RangeListener|2110081137", "2110081137", "H4_Outpost_01_QUEST_RangeListener", "box_TargetListener_27.Out", "box_MultipleOR_51.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 7);
end;

function export:f_box_TargetListener_7_Out()
    local l0, l1;
    l0 = self.box_TargetListener_7;
    l1 = self.box_MultipleOR_51;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_RangeListener|385936964", "385936964", "H4_Outpost_01_QUEST_RangeListener", "box_TargetListener_7.Out", "box_MultipleOR_51.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 3);
end;

function export:f_box_OutputOrder_v2_49_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_TargetListener_10();
    l0 = self.box_TargetListener_10;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_RangeListener|1667531626", "1667531626", "H4_Outpost_01_QUEST_RangeListener", "box_OutputOrder_v2_49.Out", "box_TargetListener_10.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_49_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_TargetListener_13();
    l0 = self.box_TargetListener_13;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_RangeListener|175860006", "175860006", "H4_Outpost_01_QUEST_RangeListener", "box_OutputOrder_v2_49.Out", "box_TargetListener_13.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_49_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_TargetListener_2();
    l0 = self.box_TargetListener_2;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_RangeListener|1517361060", "1517361060", "H4_Outpost_01_QUEST_RangeListener", "box_OutputOrder_v2_49.Out", "box_TargetListener_2.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_49_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_TargetListener_7();
    l0 = self.box_TargetListener_7;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_RangeListener|1062750358", "1062750358", "H4_Outpost_01_QUEST_RangeListener", "box_OutputOrder_v2_49.Out", "box_TargetListener_7.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_49_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_TargetListener_14();
    l0 = self.box_TargetListener_14;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_RangeListener|1985095375", "1985095375", "H4_Outpost_01_QUEST_RangeListener", "box_OutputOrder_v2_49.Out", "box_TargetListener_14.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_49_Out_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_TargetListener_20();
    l0 = self.box_TargetListener_20;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_RangeListener|446106450", "446106450", "H4_Outpost_01_QUEST_RangeListener", "box_OutputOrder_v2_49.Out", "box_TargetListener_20.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_49_Out_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_TargetListener_26();
    l0 = self.box_TargetListener_26;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_RangeListener|1691459626", "1691459626", "H4_Outpost_01_QUEST_RangeListener", "box_OutputOrder_v2_49.Out", "box_TargetListener_26.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_49_Out_7()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_TargetListener_27();
    l0 = self.box_TargetListener_27;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_RangeListener|318469656", "318469656", "H4_Outpost_01_QUEST_RangeListener", "box_OutputOrder_v2_49.Out", "box_TargetListener_27.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_49_Out_8()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_TargetListener_36();
    l0 = self.box_TargetListener_36;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_RangeListener|934055311", "934055311", "H4_Outpost_01_QUEST_RangeListener", "box_OutputOrder_v2_49.Out", "box_TargetListener_36.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_49_Out_9()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_TargetListener_46();
    l0 = self.box_TargetListener_46;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_RangeListener|1492913502", "1492913502", "H4_Outpost_01_QUEST_RangeListener", "box_OutputOrder_v2_49.Out", "box_TargetListener_46.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_IsEntityLoaded_v3_3_False()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_24();
    l0 = self.box_EntityStatusListener_24;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_RangeListener|1466502953", "1466502953", "H4_Outpost_01_QUEST_RangeListener", "box_IsEntityLoaded_v3_3.False", "box_EntityStatusListener_24.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_IsEntityLoaded_v3_3_True()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_55;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_RangeListener|1754518447", "1754518447", "H4_Outpost_01_QUEST_RangeListener", "box_IsEntityLoaded_v3_3.True", "box_MultipleOR_55.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_EntityStatusListener_67_Loaded()
    local l0, l1;
    l0 = self.box_EntityStatusListener_67;
    l1 = self.box_MultipleOR_70;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_RangeListener|8682096", "8682096", "H4_Outpost_01_QUEST_RangeListener", "box_EntityStatusListener_67.Loaded", "box_MultipleOR_70.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_IsEntityLoaded_v3_75_False()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_42();
    l0 = self.box_EntityStatusListener_42;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_RangeListener|56057996", "56057996", "H4_Outpost_01_QUEST_RangeListener", "box_IsEntityLoaded_v3_75.False", "box_EntityStatusListener_42.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_IsEntityLoaded_v3_75_True()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_66;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_RangeListener|125310761", "125310761", "H4_Outpost_01_QUEST_RangeListener", "box_IsEntityLoaded_v3_75.True", "box_MultipleOR_66.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_IsEntityLoaded_v3_58_False()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_23();
    l0 = self.box_EntityStatusListener_23;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_RangeListener|1364286471", "1364286471", "H4_Outpost_01_QUEST_RangeListener", "box_IsEntityLoaded_v3_58.False", "box_EntityStatusListener_23.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_IsEntityLoaded_v3_58_True()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_84;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_RangeListener|731758683", "731758683", "H4_Outpost_01_QUEST_RangeListener", "box_IsEntityLoaded_v3_58.True", "box_MultipleOR_84.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_IsEntityLoaded_v3_38_False()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_32();
    l0 = self.box_EntityStatusListener_32;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_RangeListener|336124019", "336124019", "H4_Outpost_01_QUEST_RangeListener", "box_IsEntityLoaded_v3_38.False", "box_EntityStatusListener_32.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_IsEntityLoaded_v3_38_True()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_82;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_RangeListener|1634772658", "1634772658", "H4_Outpost_01_QUEST_RangeListener", "box_IsEntityLoaded_v3_38.True", "box_MultipleOR_82.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_IsEntityLoaded_v3_19_False()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_43();
    l0 = self.box_EntityStatusListener_43;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_RangeListener|1799229831", "1799229831", "H4_Outpost_01_QUEST_RangeListener", "box_IsEntityLoaded_v3_19.False", "box_EntityStatusListener_43.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_IsEntityLoaded_v3_19_True()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_9;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_RangeListener|248196287", "248196287", "H4_Outpost_01_QUEST_RangeListener", "box_IsEntityLoaded_v3_19.True", "box_MultipleOR_9.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_SetEntity_v2_16_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_16_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsValueNil_v3_56();
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_RangeListener|1578537113", "1578537113", "H4_Outpost_01_QUEST_RangeListener", "box_SetEntity_v2_16.Out", "box_IsValueNil_v3_56.Entity", clone:GetLuaBox(), l0:GetLuaBox());
    -- Entity
    l0:Exec(4, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ListWriter_v2_1_Added()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ListWriter_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_47();
    l0 = self.box_MultipleAND_v2_47;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_RangeListener|781158516", "781158516", "H4_Outpost_01_QUEST_RangeListener", "box_ListWriter_v2_1.Added", "box_MultipleAND_v2_47.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 6);
end;

function export:f_box_IsValueNil_v3_61_No()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsEntityLoaded_v3_3();
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_RangeListener|1948040811", "1948040811", "H4_Outpost_01_QUEST_RangeListener", "box_IsValueNil_v3_61.No", "box_IsEntityLoaded_v3_3.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_TargetListener_14_Out()
    local l0, l1;
    l0 = self.box_TargetListener_14;
    l1 = self.box_MultipleOR_51;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_RangeListener|776729269", "776729269", "H4_Outpost_01_QUEST_RangeListener", "box_TargetListener_14.Out", "box_MultipleOR_51.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 4);
end;

function export:f_box_MultipleOR_52_Out()
    local params, l0, l1;
    params = self:OnEnter_box_MetaBreakableModifier_v2_29();
    l0 = self.box_MultipleOR_52;
    l1 = self.box_MetaBreakableModifier_v2_29;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_RangeListener|178789470", "178789470", "H4_Outpost_01_QUEST_RangeListener", "box_MultipleOR_52.Out", "box_MetaBreakableModifier_v2_29.SetUnDamageable", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetUnDamageable
    l1:Exec(3, params);
end;

function export:f_box_MultipleOR_5_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ListWriter_v2_85();
    l0 = self.box_MultipleOR_5;
    l1 = Boxes[GetPathID("Domino/System/ListWriter_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_RangeListener|1003419493", "1003419493", "H4_Outpost_01_QUEST_RangeListener", "box_MultipleOR_5.Out", "box_ListWriter_v2_85.Add", l0:GetLuaBox(), l1:GetLuaBox());
    -- Add
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SetEntity_v2_40_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_40_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsValueNil_v3_4();
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_RangeListener|552979697", "552979697", "H4_Outpost_01_QUEST_RangeListener", "box_SetEntity_v2_40.Out", "box_IsValueNil_v3_4.Entity", clone:GetLuaBox(), l0:GetLuaBox());
    -- Entity
    l0:Exec(4, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_24_Loaded()
    local l0, l1;
    l0 = self.box_EntityStatusListener_24;
    l1 = self.box_MultipleOR_55;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_RangeListener|1657648309", "1657648309", "H4_Outpost_01_QUEST_RangeListener", "box_EntityStatusListener_24.Loaded", "box_MultipleOR_55.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_ListWriter_v2_85_Added()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ListWriter_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_47();
    l0 = self.box_MultipleAND_v2_47;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_RangeListener|565003004", "565003004", "H4_Outpost_01_QUEST_RangeListener", "box_ListWriter_v2_85.Added", "box_MultipleAND_v2_47.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 3);
end;

function export:f_box_SetEntity_v2_69_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_69_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsValueNil_v3_68();
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_RangeListener|985437697", "985437697", "H4_Outpost_01_QUEST_RangeListener", "box_SetEntity_v2_69.Out", "box_IsValueNil_v3_68.Entity", clone:GetLuaBox(), l0:GetLuaBox());
    -- Entity
    l0:Exec(4, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_9_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ListWriter_v2_76();
    l0 = self.box_MultipleOR_9;
    l1 = Boxes[GetPathID("Domino/System/ListWriter_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_RangeListener|1243334645", "1243334645", "H4_Outpost_01_QUEST_RangeListener", "box_MultipleOR_9.Out", "box_ListWriter_v2_76.Add", l0:GetLuaBox(), l1:GetLuaBox());
    -- Add
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_55_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ListWriter_v2_64();
    l0 = self.box_MultipleOR_55;
    l1 = Boxes[GetPathID("Domino/System/ListWriter_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_RangeListener|1000389342", "1000389342", "H4_Outpost_01_QUEST_RangeListener", "box_MultipleOR_55.Out", "box_ListWriter_v2_64.Add", l0:GetLuaBox(), l1:GetLuaBox());
    -- Add
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_IsValueNil_v3_4_No()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsEntityLoaded_v3_38();
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_RangeListener|1412989494", "1412989494", "H4_Outpost_01_QUEST_RangeListener", "box_IsValueNil_v3_4.No", "box_IsEntityLoaded_v3_38.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_22_Loaded()
    local l0, l1;
    l0 = self.box_EntityStatusListener_22;
    l1 = self.box_MultipleOR_37;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_RangeListener|492342803", "492342803", "H4_Outpost_01_QUEST_RangeListener", "box_EntityStatusListener_22.Loaded", "box_MultipleOR_37.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_IsEntityLoaded_v3_8_False()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_22();
    l0 = self.box_EntityStatusListener_22;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_RangeListener|1793722170", "1793722170", "H4_Outpost_01_QUEST_RangeListener", "box_IsEntityLoaded_v3_8.False", "box_EntityStatusListener_22.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_IsEntityLoaded_v3_8_True()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_37;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_RangeListener|724825123", "724825123", "H4_Outpost_01_QUEST_RangeListener", "box_IsEntityLoaded_v3_8.True", "box_MultipleOR_37.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_SetEntity_v2_50_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_50_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsValueNil_v3_17();
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_RangeListener|421195479", "421195479", "H4_Outpost_01_QUEST_RangeListener", "box_SetEntity_v2_50.Out", "box_IsValueNil_v3_17.Entity", clone:GetLuaBox(), l0:GetLuaBox());
    -- Entity
    l0:Exec(4, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ListWriter_v2_64_Added()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ListWriter_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_47();
    l0 = self.box_MultipleAND_v2_47;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_RangeListener|408411741", "408411741", "H4_Outpost_01_QUEST_RangeListener", "box_ListWriter_v2_64.Added", "box_MultipleAND_v2_47.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 8);
end;

function export:f_box_SetEntity_v2_59_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_59_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsValueNil_v3_33();
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_RangeListener|1367135153", "1367135153", "H4_Outpost_01_QUEST_RangeListener", "box_SetEntity_v2_59.Out", "box_IsValueNil_v3_33.Entity", clone:GetLuaBox(), l0:GetLuaBox());
    -- Entity
    l0:Exec(4, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_25_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ListWriter_v2_54();
    l0 = self.box_MultipleOR_25;
    l1 = Boxes[GetPathID("Domino/System/ListWriter_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_RangeListener|1063940631", "1063940631", "H4_Outpost_01_QUEST_RangeListener", "box_MultipleOR_25.Out", "box_ListWriter_v2_54.Add", l0:GetLuaBox(), l1:GetLuaBox());
    -- Add
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_IsValueNil_v3_78_No()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsEntityLoaded_v3_21();
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_RangeListener|1060499096", "1060499096", "H4_Outpost_01_QUEST_RangeListener", "box_IsValueNil_v3_78.No", "box_IsEntityLoaded_v3_21.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_IsValueNil_v3_68_No()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsEntityLoaded_v3_65();
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_RangeListener|336552664", "336552664", "H4_Outpost_01_QUEST_RangeListener", "box_IsValueNil_v3_68.No", "box_IsEntityLoaded_v3_65.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetEntity_v2_12_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_12_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsValueNil_v3_44();
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_RangeListener|1616648376", "1616648376", "H4_Outpost_01_QUEST_RangeListener", "box_SetEntity_v2_12.Out", "box_IsValueNil_v3_44.Entity", clone:GetLuaBox(), l0:GetLuaBox());
    -- Entity
    l0:Exec(4, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_AddToGroupFromList_v2_77_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/AddToGroupFromList_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_53();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_RangeListener|1163808170", "1163808170", "H4_Outpost_01_QUEST_RangeListener", "box_AddToGroupFromList_v2_77.Out", "box_OutputOrder_v2_53.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetEntity_v2_74_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_74_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsValueNil_v3_61();
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_RangeListener|1700079497", "1700079497", "H4_Outpost_01_QUEST_RangeListener", "box_SetEntity_v2_74.Out", "box_IsValueNil_v3_61.Entity", clone:GetLuaBox(), l0:GetLuaBox());
    -- Entity
    l0:Exec(4, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_51_Out()
    local l0;
    l0 = self.box_MultipleOR_51;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_RangeListener|1449833378", "1449833378", "H4_Outpost_01_QUEST_RangeListener", "box_MultipleOR_51.Out", "Destroyed", l0:GetLuaBox(), self);
    self:Destroyed();
end;

function export:f_box_ListWriter_v2_57_Added()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ListWriter_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_47();
    l0 = self.box_MultipleAND_v2_47;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_RangeListener|579923871", "579923871", "H4_Outpost_01_QUEST_RangeListener", "box_ListWriter_v2_57.Added", "box_MultipleAND_v2_47.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 4);
end;

function export:f_box_MultipleOR_70_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ListWriter_v2_57();
    l0 = self.box_MultipleOR_70;
    l1 = Boxes[GetPathID("Domino/System/ListWriter_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_RangeListener|119540754", "119540754", "H4_Outpost_01_QUEST_RangeListener", "box_MultipleOR_70.Out", "box_ListWriter_v2_57.Add", l0:GetLuaBox(), l1:GetLuaBox());
    -- Add
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_32_Loaded()
    local l0, l1;
    l0 = self.box_EntityStatusListener_32;
    l1 = self.box_MultipleOR_82;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_RangeListener|731952776", "731952776", "H4_Outpost_01_QUEST_RangeListener", "box_EntityStatusListener_32.Loaded", "box_MultipleOR_82.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_31_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_40();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_RangeListener|1415263451", "1415263451", "H4_Outpost_01_QUEST_RangeListener", "box_OutputOrder_v2_31.Out", "box_SetEntity_v2_40.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_31_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_16();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_RangeListener|349509602", "349509602", "H4_Outpost_01_QUEST_RangeListener", "box_OutputOrder_v2_31.Out", "box_SetEntity_v2_16.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_31_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_59();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_RangeListener|1798879182", "1798879182", "H4_Outpost_01_QUEST_RangeListener", "box_OutputOrder_v2_31.Out", "box_SetEntity_v2_59.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_31_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_12();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_RangeListener|1414717921", "1414717921", "H4_Outpost_01_QUEST_RangeListener", "box_OutputOrder_v2_31.Out", "box_SetEntity_v2_12.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_31_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_28();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_RangeListener|66252325", "66252325", "H4_Outpost_01_QUEST_RangeListener", "box_OutputOrder_v2_31.Out", "box_SetEntity_v2_28.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_31_Out_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_30();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_RangeListener|678694184", "678694184", "H4_Outpost_01_QUEST_RangeListener", "box_OutputOrder_v2_31.Out", "box_SetEntity_v2_30.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_31_Out_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_69();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_RangeListener|1572197979", "1572197979", "H4_Outpost_01_QUEST_RangeListener", "box_OutputOrder_v2_31.Out", "box_SetEntity_v2_69.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_31_Out_7()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_48();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_RangeListener|426336859", "426336859", "H4_Outpost_01_QUEST_RangeListener", "box_OutputOrder_v2_31.Out", "box_SetEntity_v2_48.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_31_Out_8()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_74();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_RangeListener|2020053944", "2020053944", "H4_Outpost_01_QUEST_RangeListener", "box_OutputOrder_v2_31.Out", "box_SetEntity_v2_74.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_31_Out_9()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_50();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_RangeListener|649446248", "649446248", "H4_Outpost_01_QUEST_RangeListener", "box_OutputOrder_v2_31.Out", "box_SetEntity_v2_50.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_71_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ListWriter_v2_1();
    l0 = self.box_MultipleOR_71;
    l1 = Boxes[GetPathID("Domino/System/ListWriter_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_RangeListener|1900319212", "1900319212", "H4_Outpost_01_QUEST_RangeListener", "box_MultipleOR_71.Out", "box_ListWriter_v2_1.Add", l0:GetLuaBox(), l1:GetLuaBox());
    -- Add
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_82_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ListWriter_v2_15();
    l0 = self.box_MultipleOR_82;
    l1 = Boxes[GetPathID("Domino/System/ListWriter_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_RangeListener|355818281", "355818281", "H4_Outpost_01_QUEST_RangeListener", "box_MultipleOR_82.Out", "box_ListWriter_v2_15.Add", l0:GetLuaBox(), l1:GetLuaBox());
    -- Add
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_TargetListener_46_Out()
    local l0, l1;
    l0 = self.box_TargetListener_46;
    l1 = self.box_MultipleOR_51;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_RangeListener|990248249", "990248249", "H4_Outpost_01_QUEST_RangeListener", "box_TargetListener_46.Out", "box_MultipleOR_51.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 9);
end;

function export:f_box_TargetListener_26_Out()
    local l0, l1;
    l0 = self.box_TargetListener_26;
    l1 = self.box_MultipleOR_51;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_RangeListener|1537041080", "1537041080", "H4_Outpost_01_QUEST_RangeListener", "box_TargetListener_26.Out", "box_MultipleOR_51.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 6);
end;

function export:f_box_TargetListener_10_Out()
    local l0, l1;
    l0 = self.box_TargetListener_10;
    l1 = self.box_MultipleOR_51;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_RangeListener|1974562420", "1974562420", "H4_Outpost_01_QUEST_RangeListener", "box_TargetListener_10.Out", "box_MultipleOR_51.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_SetEntity_v2_28_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_28_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsValueNil_v3_78();
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_RangeListener|1256962671", "1256962671", "H4_Outpost_01_QUEST_RangeListener", "box_SetEntity_v2_28.Out", "box_IsValueNil_v3_78.Entity", clone:GetLuaBox(), l0:GetLuaBox());
    -- Entity
    l0:Exec(4, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_42_Loaded()
    local l0, l1;
    l0 = self.box_EntityStatusListener_42;
    l1 = self.box_MultipleOR_66;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_RangeListener|1232379372", "1232379372", "H4_Outpost_01_QUEST_RangeListener", "box_EntityStatusListener_42.Loaded", "box_MultipleOR_66.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_SetEntity_v2_48_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_48_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsValueNil_v3_63();
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_RangeListener|542362139", "542362139", "H4_Outpost_01_QUEST_RangeListener", "box_SetEntity_v2_48.Out", "box_IsValueNil_v3_63.Entity", clone:GetLuaBox(), l0:GetLuaBox());
    -- Entity
    l0:Exec(4, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ListWriter_v2_15_Added()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ListWriter_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_47();
    l0 = self.box_MultipleAND_v2_47;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_RangeListener|1486059497", "1486059497", "H4_Outpost_01_QUEST_RangeListener", "box_ListWriter_v2_15.Added", "box_MultipleAND_v2_47.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 0);
end;

function export:f_box_ListWriter_v2_39_Added()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ListWriter_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_47();
    l0 = self.box_MultipleAND_v2_47;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_RangeListener|686079670", "686079670", "H4_Outpost_01_QUEST_RangeListener", "box_ListWriter_v2_39.Added", "box_MultipleAND_v2_47.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 9);
end;

function export:f_box_IsValueNil_v3_33_No()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsEntityLoaded_v3_11();
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_RangeListener|394268469", "394268469", "H4_Outpost_01_QUEST_RangeListener", "box_IsValueNil_v3_33.No", "box_IsEntityLoaded_v3_11.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_IsEntityLoaded_v3_21_False()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_67();
    l0 = self.box_EntityStatusListener_67;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_RangeListener|1479464761", "1479464761", "H4_Outpost_01_QUEST_RangeListener", "box_IsEntityLoaded_v3_21.False", "box_EntityStatusListener_67.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_IsEntityLoaded_v3_21_True()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_70;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_RangeListener|1682387308", "1682387308", "H4_Outpost_01_QUEST_RangeListener", "box_IsEntityLoaded_v3_21.True", "box_MultipleOR_70.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_EntityStatusListener_18_Loaded()
    local l0, l1;
    l0 = self.box_EntityStatusListener_18;
    l1 = self.box_MultipleOR_5;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_RangeListener|1973373290", "1973373290", "H4_Outpost_01_QUEST_RangeListener", "box_EntityStatusListener_18.Loaded", "box_MultipleOR_5.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_EntityStatusListener_35_Loaded()
    local l0, l1;
    l0 = self.box_EntityStatusListener_35;
    l1 = self.box_MultipleOR_25;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_RangeListener|1847049873", "1847049873", "H4_Outpost_01_QUEST_RangeListener", "box_EntityStatusListener_35.Loaded", "box_MultipleOR_25.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_ListWriter_v2_73_Added()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ListWriter_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_47();
    l0 = self.box_MultipleAND_v2_47;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_RangeListener|8321823", "8321823", "H4_Outpost_01_QUEST_RangeListener", "box_ListWriter_v2_73.Added", "box_MultipleAND_v2_47.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 5);
end;

function export:f_box_TargetListener_36_Out()
    local l0, l1;
    l0 = self.box_TargetListener_36;
    l1 = self.box_MultipleOR_51;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_RangeListener|1250496264", "1250496264", "H4_Outpost_01_QUEST_RangeListener", "box_TargetListener_36.Out", "box_MultipleOR_51.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 8);
end;

function export:f_box_TargetListener_20_Out()
    local l0, l1;
    l0 = self.box_TargetListener_20;
    l1 = self.box_MultipleOR_51;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_RangeListener|1160430641", "1160430641", "H4_Outpost_01_QUEST_RangeListener", "box_TargetListener_20.Out", "box_MultipleOR_51.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 5);
end;

function export:f_box_OutputOrder_v2_53_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_52;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_RangeListener|1299011974", "1299011974", "H4_Outpost_01_QUEST_RangeListener", "box_OutputOrder_v2_53.Out", "box_MultipleOR_52.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_53_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_RangeListener|1062437794", "1062437794", "H4_Outpost_01_QUEST_RangeListener", "box_OutputOrder_v2_53.Out", "Enabled", clone:GetLuaBox(), self);
    self:Enabled();
end;

function export:f_box_EntityStatusListener_41_Loaded()
    local l0, l1;
    l0 = self.box_EntityStatusListener_41;
    l1 = self.box_MultipleOR_71;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_RangeListener|1302812960", "1302812960", "H4_Outpost_01_QUEST_RangeListener", "box_EntityStatusListener_41.Loaded", "box_MultipleOR_71.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_TargetListener_13_Out()
    local l0, l1;
    l0 = self.box_TargetListener_13;
    l1 = self.box_MultipleOR_51;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_RangeListener|510448574", "510448574", "H4_Outpost_01_QUEST_RangeListener", "box_TargetListener_13.Out", "box_MultipleOR_51.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_IsEntityLoaded_v3_65_False()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_41();
    l0 = self.box_EntityStatusListener_41;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_RangeListener|1123950605", "1123950605", "H4_Outpost_01_QUEST_RangeListener", "box_IsEntityLoaded_v3_65.False", "box_EntityStatusListener_41.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_IsEntityLoaded_v3_65_True()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_71;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_RangeListener|1272680295", "1272680295", "H4_Outpost_01_QUEST_RangeListener", "box_IsEntityLoaded_v3_65.True", "box_MultipleOR_71.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_SetEntity_v2_30_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_30_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsValueNil_v3_60();
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_RangeListener|402804989", "402804989", "H4_Outpost_01_QUEST_RangeListener", "box_SetEntity_v2_30.Out", "box_IsValueNil_v3_60.Entity", clone:GetLuaBox(), l0:GetLuaBox());
    -- Entity
    l0:Exec(4, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_23_Loaded()
    local l0, l1;
    l0 = self.box_EntityStatusListener_23;
    l1 = self.box_MultipleOR_84;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_RangeListener|636500007", "636500007", "H4_Outpost_01_QUEST_RangeListener", "box_EntityStatusListener_23.Loaded", "box_MultipleOR_84.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_ListWriter_v2_76_Added()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ListWriter_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_47();
    l0 = self.box_MultipleAND_v2_47;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_RangeListener|1763240278", "1763240278", "H4_Outpost_01_QUEST_RangeListener", "box_ListWriter_v2_76.Added", "box_MultipleAND_v2_47.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 1);
end;

function export:f_box_IsValueNil_v3_44_No()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsEntityLoaded_v3_34();
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_RangeListener|1867003335", "1867003335", "H4_Outpost_01_QUEST_RangeListener", "box_IsValueNil_v3_44.No", "box_IsEntityLoaded_v3_34.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_84_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ListWriter_v2_6();
    l0 = self.box_MultipleOR_84;
    l1 = Boxes[GetPathID("Domino/System/ListWriter_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_RangeListener|71497003", "71497003", "H4_Outpost_01_QUEST_RangeListener", "box_MultipleOR_84.Out", "box_ListWriter_v2_6.Add", l0:GetLuaBox(), l1:GetLuaBox());
    -- Add
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_IsEntityLoaded_v3_34_False()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_18();
    l0 = self.box_EntityStatusListener_18;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_RangeListener|613812905", "613812905", "H4_Outpost_01_QUEST_RangeListener", "box_IsEntityLoaded_v3_34.False", "box_EntityStatusListener_18.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_IsEntityLoaded_v3_34_True()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_5;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_RangeListener|1354292346", "1354292346", "H4_Outpost_01_QUEST_RangeListener", "box_IsEntityLoaded_v3_34.True", "box_MultipleOR_5.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_MultipleOR_37_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ListWriter_v2_39();
    l0 = self.box_MultipleOR_37;
    l1 = Boxes[GetPathID("Domino/System/ListWriter_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_RangeListener|772367145", "772367145", "H4_Outpost_01_QUEST_RangeListener", "box_MultipleOR_37.Out", "box_ListWriter_v2_39.Add", l0:GetLuaBox(), l1:GetLuaBox());
    -- Add
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_IsValueNil_v3_63_No()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsEntityLoaded_v3_58();
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_RangeListener|492899362", "492899362", "H4_Outpost_01_QUEST_RangeListener", "box_IsValueNil_v3_63.No", "box_IsEntityLoaded_v3_58.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_IsEntityLoaded_v3_11_False()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_35();
    l0 = self.box_EntityStatusListener_35;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_RangeListener|124485652", "124485652", "H4_Outpost_01_QUEST_RangeListener", "box_IsEntityLoaded_v3_11.False", "box_EntityStatusListener_35.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_IsEntityLoaded_v3_11_True()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_25;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_RangeListener|752772595", "752772595", "H4_Outpost_01_QUEST_RangeListener", "box_IsEntityLoaded_v3_11.True", "box_MultipleOR_25.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:OnEnter_box_OutputOrder_v2_90()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_90");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_RangeListener|@DisableBreakables");
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
        -- Out,
        [0] = {
            connections = {
                [0] = self.f_box_OutputOrder_v2_90_Out_0,
                [1] = self.f_box_OutputOrder_v2_90_Out_1,
                [2] = self.f_box_OutputOrder_v2_90_Out_2,
                [3] = self.f_box_OutputOrder_v2_90_Out_3,
                [4] = self.f_box_OutputOrder_v2_90_Out_4,
                [5] = self.f_box_OutputOrder_v2_90_Out_5,
                [6] = self.f_box_OutputOrder_v2_90_Out_6,
                [7] = self.f_box_OutputOrder_v2_90_Out_7,
                [8] = self.f_box_OutputOrder_v2_90_Out_8,
                [9] = self.f_box_OutputOrder_v2_90_Out_9,
            },
            count = 10,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_IsValueNil_v3_56()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsValueNil_v3_56");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_RangeListener|59757239");
    l0:SetConnections({
        -- No,
        [0] = self.f_box_IsValueNil_v3_56_No,
    });
    params = {
        -- ent,
        [4] = self.eTarget02,
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_43()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = self.eTarget02,
    };
    return params;
end;

function export:OnEnter_box_ListWriter_v2_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ListWriter_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ListWriter_v2_6");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_RangeListener|85944478");
    l0:SetConnections({
        -- Added,
        [0] = self.f_box_ListWriter_v2_6_Added,
    });
    params = {
        -- Data,
        [0] = self.eTarget08,
        -- Input,
        [2] = self.lBreakables,
    };
    return params;
end;

function export:OnEnter_box_TargetListener_2()
    local params;
    params = {
        -- Target,
        [0] = self.eTarget03,
    };
    return params;
end;

function export:OnEnter_box_IsValueNil_v3_17()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsValueNil_v3_17");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_RangeListener|110881280");
    l0:SetConnections({
        -- No,
        [0] = self.f_box_IsValueNil_v3_17_No,
    });
    params = {
        -- ent,
        [4] = self.eTarget10,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_45()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_45");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_RangeListener|111257407");
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
                [0] = self.f_box_OutputOrder_v2_45_Out_0,
                [1] = self.f_box_OutputOrder_v2_45_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_MultipleAND_v2_47()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_IsValueNil_v3_60()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsValueNil_v3_60");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_RangeListener|112322410");
    l0:SetConnections({
        -- No,
        [0] = self.f_box_IsValueNil_v3_60_No,
    });
    params = {
        -- ent,
        [4] = self.eTarget06,
    };
    return params;
end;

function export:OnEnter_box_MetaBreakableModifier_v2_29()
    local params;
    params = {
        -- targets,
        [0] = "#F82B8A74",
    };
    return params;
end;

function export:OnEnter_box_ListWriter_v2_54()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ListWriter_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ListWriter_v2_54");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_RangeListener|149597509");
    l0:SetConnections({
        -- Added,
        [0] = self.f_box_ListWriter_v2_54_Added,
    });
    params = {
        -- Data,
        [0] = self.eTarget03,
        -- Input,
        [2] = self.lBreakables,
    };
    return params;
end;

function export:OnEnter_box_TargetListener_27()
    local params;
    params = {
        -- Target,
        [0] = self.eTarget08,
    };
    return params;
end;

function export:OnEnter_box_TargetListener_7()
    local params;
    params = {
        -- Target,
        [0] = self.eTarget04,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_49()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_49");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_RangeListener|215814946");
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
        -- Out,
        [0] = {
            connections = {
                [0] = self.f_box_OutputOrder_v2_49_Out_0,
                [1] = self.f_box_OutputOrder_v2_49_Out_1,
                [2] = self.f_box_OutputOrder_v2_49_Out_2,
                [3] = self.f_box_OutputOrder_v2_49_Out_3,
                [4] = self.f_box_OutputOrder_v2_49_Out_4,
                [5] = self.f_box_OutputOrder_v2_49_Out_5,
                [6] = self.f_box_OutputOrder_v2_49_Out_6,
                [7] = self.f_box_OutputOrder_v2_49_Out_7,
                [8] = self.f_box_OutputOrder_v2_49_Out_8,
                [9] = self.f_box_OutputOrder_v2_49_Out_9,
            },
            count = 10,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_IsEntityLoaded_v3_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsEntityLoaded_v3_3");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_RangeListener|223920248");
    l0:SetConnections({
        -- False,
        [0] = self.f_box_IsEntityLoaded_v3_3_False,
        -- True,
        [1] = self.f_box_IsEntityLoaded_v3_3_True,
    });
    params = {
        -- entityId,
        [0] = self.eTarget09,
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_67()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = self.eTarget05,
    };
    return params;
end;

function export:OnEnter_box_IsEntityLoaded_v3_75()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsEntityLoaded_v3_75");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_RangeListener|246524415");
    l0:SetConnections({
        -- False,
        [0] = self.f_box_IsEntityLoaded_v3_75_False,
        -- True,
        [1] = self.f_box_IsEntityLoaded_v3_75_True,
    });
    params = {
        -- entityId,
        [0] = self.eTarget06,
    };
    return params;
end;

function export:OnEnter_box_IsEntityLoaded_v3_58()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsEntityLoaded_v3_58");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_RangeListener|267854350");
    l0:SetConnections({
        -- False,
        [0] = self.f_box_IsEntityLoaded_v3_58_False,
        -- True,
        [1] = self.f_box_IsEntityLoaded_v3_58_True,
    });
    params = {
        -- entityId,
        [0] = self.eTarget08,
    };
    return params;
end;

function export:OnEnter_box_IsEntityLoaded_v3_38()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsEntityLoaded_v3_38");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_RangeListener|275276874");
    l0:SetConnections({
        -- False,
        [0] = self.f_box_IsEntityLoaded_v3_38_False,
        -- True,
        [1] = self.f_box_IsEntityLoaded_v3_38_True,
    });
    params = {
        -- entityId,
        [0] = self.eTarget01,
    };
    return params;
end;

function export:OnEnter_box_IsEntityLoaded_v3_19()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsEntityLoaded_v3_19");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_RangeListener|285017705");
    l0:SetConnections({
        -- False,
        [0] = self.f_box_IsEntityLoaded_v3_19_False,
        -- True,
        [1] = self.f_box_IsEntityLoaded_v3_19_True,
    });
    params = {
        -- entityId,
        [0] = self.eTarget02,
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_16()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_16");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_RangeListener|328166450");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_16_Out,
    });
    params = {
        -- Entity,
        [0] = self.eInBreakable02,
    };
    return params;
end;

function export:OnEnter_box_ListWriter_v2_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ListWriter_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ListWriter_v2_1");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_RangeListener|345430224");
    l0:SetConnections({
        -- Added,
        [0] = self.f_box_ListWriter_v2_1_Added,
    });
    params = {
        -- Data,
        [0] = self.eTarget07,
        -- Input,
        [2] = self.lBreakables,
    };
    return params;
end;

function export:OnEnter_box_IsValueNil_v3_61()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsValueNil_v3_61");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_RangeListener|354990299");
    l0:SetConnections({
        -- No,
        [0] = self.f_box_IsValueNil_v3_61_No,
    });
    params = {
        -- ent,
        [4] = self.eTarget09,
    };
    return params;
end;

function export:OnEnter_box_TargetListener_14()
    local params;
    params = {
        -- Target,
        [0] = self.eTarget05,
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_40()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_40");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_RangeListener|435724553");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_40_Out,
    });
    params = {
        -- Entity,
        [0] = self.eInBreakable01,
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
        [2] = self.eTarget09,
    };
    return params;
end;

function export:OnEnter_box_ListWriter_v2_85()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ListWriter_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ListWriter_v2_85");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_RangeListener|505938474");
    l0:SetConnections({
        -- Added,
        [0] = self.f_box_ListWriter_v2_85_Added,
    });
    params = {
        -- Data,
        [0] = self.eTarget04,
        -- Input,
        [2] = self.lBreakables,
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_69()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_69");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_RangeListener|572022360");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_69_Out,
    });
    params = {
        -- Entity,
        [0] = self.eInBreakable07,
    };
    return params;
end;

function export:OnEnter_box_IsValueNil_v3_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsValueNil_v3_4");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_RangeListener|816115691");
    l0:SetConnections({
        -- No,
        [0] = self.f_box_IsValueNil_v3_4_No,
    });
    params = {
        -- ent,
        [4] = self.eTarget01,
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_22()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = self.eTarget10,
    };
    return params;
end;

function export:OnEnter_box_IsEntityLoaded_v3_8()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsEntityLoaded_v3_8");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_RangeListener|915342438");
    l0:SetConnections({
        -- False,
        [0] = self.f_box_IsEntityLoaded_v3_8_False,
        -- True,
        [1] = self.f_box_IsEntityLoaded_v3_8_True,
    });
    params = {
        -- entityId,
        [0] = self.eTarget10,
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_50()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_50");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_RangeListener|949158212");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_50_Out,
    });
    params = {
        -- Entity,
        [0] = self.eInBreakable10,
    };
    return params;
end;

function export:OnEnter_box_ListWriter_v2_64()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ListWriter_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ListWriter_v2_64");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_RangeListener|1033071007");
    l0:SetConnections({
        -- Added,
        [0] = self.f_box_ListWriter_v2_64_Added,
    });
    params = {
        -- Data,
        [0] = self.eTarget09,
        -- Input,
        [2] = self.lBreakables,
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_59()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_59");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_RangeListener|1037874659");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_59_Out,
    });
    params = {
        -- Entity,
        [0] = self.eInBreakable03,
    };
    return params;
end;

function export:OnEnter_box_IsValueNil_v3_78()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsValueNil_v3_78");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_RangeListener|1065888244");
    l0:SetConnections({
        -- No,
        [0] = self.f_box_IsValueNil_v3_78_No,
    });
    params = {
        -- ent,
        [4] = self.eTarget05,
    };
    return params;
end;

function export:OnEnter_box_IsValueNil_v3_68()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsValueNil_v3_68");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_RangeListener|1124992974");
    l0:SetConnections({
        -- No,
        [0] = self.f_box_IsValueNil_v3_68_No,
    });
    params = {
        -- ent,
        [4] = self.eTarget07,
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_12()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_12");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_RangeListener|1239731736");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_12_Out,
    });
    params = {
        -- Entity,
        [0] = self.eInBreakable04,
    };
    return params;
end;

function export:OnEnter_box_AddToGroupFromList_v2_77()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/AddToGroupFromList_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_AddToGroupFromList_v2_77");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_RangeListener|1304093274");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_AddToGroupFromList_v2_77_Out,
    });
    params = {
        -- Group,
        [0] = "#F82B8A74",
        -- Pawns,
        [1] = self.lBreakables,
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_74()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_74");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_RangeListener|1328206629");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_74_Out,
    });
    params = {
        -- Entity,
        [0] = self.eInBreakable09,
    };
    return params;
end;

function export:OnEnter_box_ListWriter_v2_57()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ListWriter_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ListWriter_v2_57");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_RangeListener|1365838660");
    l0:SetConnections({
        -- Added,
        [0] = self.f_box_ListWriter_v2_57_Added,
    });
    params = {
        -- Data,
        [0] = self.eTarget05,
        -- Input,
        [2] = self.lBreakables,
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_32()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = self.eTarget01,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_31()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_31");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_RangeListener|1433055743");
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
        -- Out,
        [0] = {
            connections = {
                [0] = self.f_box_OutputOrder_v2_31_Out_0,
                [1] = self.f_box_OutputOrder_v2_31_Out_1,
                [2] = self.f_box_OutputOrder_v2_31_Out_2,
                [3] = self.f_box_OutputOrder_v2_31_Out_3,
                [4] = self.f_box_OutputOrder_v2_31_Out_4,
                [5] = self.f_box_OutputOrder_v2_31_Out_5,
                [6] = self.f_box_OutputOrder_v2_31_Out_6,
                [7] = self.f_box_OutputOrder_v2_31_Out_7,
                [8] = self.f_box_OutputOrder_v2_31_Out_8,
                [9] = self.f_box_OutputOrder_v2_31_Out_9,
            },
            count = 10,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_TargetListener_46()
    local params;
    params = {
        -- Target,
        [0] = self.eTarget10,
    };
    return params;
end;

function export:OnEnter_box_TargetListener_26()
    local params;
    params = {
        -- Target,
        [0] = self.eTarget07,
    };
    return params;
end;

function export:OnEnter_box_TargetListener_10()
    local params;
    params = {
        -- Target,
        [0] = self.eTarget01,
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_28()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_28");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_RangeListener|1514608235");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_28_Out,
    });
    params = {
        -- Entity,
        [0] = self.eInBreakable05,
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_42()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = self.eTarget06,
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_48()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_48");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_RangeListener|1563454767");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_48_Out,
    });
    params = {
        -- Entity,
        [0] = self.eInBreakable08,
    };
    return params;
end;

function export:OnEnter_box_ListWriter_v2_15()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ListWriter_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ListWriter_v2_15");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_RangeListener|1592604294");
    l0:SetConnections({
        -- Added,
        [0] = self.f_box_ListWriter_v2_15_Added,
    });
    params = {
        -- Data,
        [0] = self.eTarget01,
        -- Input,
        [2] = self.lBreakables,
    };
    return params;
end;

function export:OnEnter_box_ListWriter_v2_39()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ListWriter_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ListWriter_v2_39");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_RangeListener|1634951770");
    l0:SetConnections({
        -- Added,
        [0] = self.f_box_ListWriter_v2_39_Added,
    });
    params = {
        -- Data,
        [0] = self.eTarget10,
        -- Input,
        [2] = self.lBreakables,
    };
    return params;
end;

function export:OnEnter_box_IsValueNil_v3_33()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsValueNil_v3_33");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_RangeListener|1650555406");
    l0:SetConnections({
        -- No,
        [0] = self.f_box_IsValueNil_v3_33_No,
    });
    params = {
        -- ent,
        [4] = self.eTarget03,
    };
    return params;
end;

function export:OnEnter_box_IsEntityLoaded_v3_21()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsEntityLoaded_v3_21");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_RangeListener|1660702084");
    l0:SetConnections({
        -- False,
        [0] = self.f_box_IsEntityLoaded_v3_21_False,
        -- True,
        [1] = self.f_box_IsEntityLoaded_v3_21_True,
    });
    params = {
        -- entityId,
        [0] = self.eTarget05,
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_18()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = self.eTarget04,
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_35()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = self.eTarget03,
    };
    return params;
end;

function export:OnEnter_box_ListWriter_v2_73()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ListWriter_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ListWriter_v2_73");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_RangeListener|1767306494");
    l0:SetConnections({
        -- Added,
        [0] = self.f_box_ListWriter_v2_73_Added,
    });
    params = {
        -- Data,
        [0] = self.eTarget06,
        -- Input,
        [2] = self.lBreakables,
    };
    return params;
end;

function export:OnEnter_box_TargetListener_36()
    local params;
    params = {
        -- Target,
        [0] = self.eTarget09,
    };
    return params;
end;

function export:OnEnter_box_TargetListener_20()
    local params;
    params = {
        -- Target,
        [0] = self.eTarget06,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_53()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_53");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_RangeListener|1896342429");
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
                [0] = self.f_box_OutputOrder_v2_53_Out_0,
                [1] = self.f_box_OutputOrder_v2_53_Out_1,
            },
            count = 2,
        },
    });
    params = {
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
        [2] = self.eTarget07,
    };
    return params;
end;

function export:OnEnter_box_TargetListener_13()
    local params;
    params = {
        -- Target,
        [0] = self.eTarget02,
    };
    return params;
end;

function export:OnEnter_box_IsEntityLoaded_v3_65()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsEntityLoaded_v3_65");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_RangeListener|1958269556");
    l0:SetConnections({
        -- False,
        [0] = self.f_box_IsEntityLoaded_v3_65_False,
        -- True,
        [1] = self.f_box_IsEntityLoaded_v3_65_True,
    });
    params = {
        -- entityId,
        [0] = self.eTarget07,
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_30()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_30");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_RangeListener|2014261666");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_30_Out,
    });
    params = {
        -- Entity,
        [0] = self.eInBreakable06,
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_23()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = self.eTarget08,
    };
    return params;
end;

function export:OnEnter_box_ListWriter_v2_76()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ListWriter_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ListWriter_v2_76");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_RangeListener|2025806155");
    l0:SetConnections({
        -- Added,
        [0] = self.f_box_ListWriter_v2_76_Added,
    });
    params = {
        -- Data,
        [0] = self.eTarget02,
        -- Input,
        [2] = self.lBreakables,
    };
    return params;
end;

function export:OnEnter_box_IsValueNil_v3_44()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsValueNil_v3_44");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_RangeListener|2041193043");
    l0:SetConnections({
        -- No,
        [0] = self.f_box_IsValueNil_v3_44_No,
    });
    params = {
        -- ent,
        [4] = self.eTarget04,
    };
    return params;
end;

function export:OnEnter_box_IsEntityLoaded_v3_34()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsEntityLoaded_v3_34");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_RangeListener|2089767842");
    l0:SetConnections({
        -- False,
        [0] = self.f_box_IsEntityLoaded_v3_34_False,
        -- True,
        [1] = self.f_box_IsEntityLoaded_v3_34_True,
    });
    params = {
        -- entityId,
        [0] = self.eTarget04,
    };
    return params;
end;

function export:OnEnter_box_IsValueNil_v3_63()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsValueNil_v3_63");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_RangeListener|2129012589");
    l0:SetConnections({
        -- No,
        [0] = self.f_box_IsValueNil_v3_63_No,
    });
    params = {
        -- ent,
        [4] = self.eTarget08,
    };
    return params;
end;

function export:OnEnter_box_IsEntityLoaded_v3_11()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsEntityLoaded_v3_11");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_RangeListener|2132844302");
    l0:SetConnections({
        -- False,
        [0] = self.f_box_IsEntityLoaded_v3_11_False,
        -- True,
        [1] = self.f_box_IsEntityLoaded_v3_11_True,
    });
    params = {
        -- entityId,
        [0] = self.eTarget03,
    };
    return params;
end;

function export:OnExit_box_SetEntity_v2_16_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.eTarget02 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_40_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.eTarget01 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_69_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.eTarget07 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_50_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.eTarget10 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_59_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.eTarget03 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_12_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.eTarget04 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_74_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.eTarget09 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_28_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.eTarget05 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_48_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.eTarget08 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_30_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.eTarget06 = l0:GetDataOutValue(0);
end;

-- Empty out anchor definitions
function export:Enabled()
    
end;
function export:Destroyed()
    
end;
function export:Undamageable()
    
end;
function export:Damageable()
    
end;
_compilerVersion = 60;
<DominoMetadata IsStateless="0" IsSystem="0">
	<ControlsIn>
		<ControlIn Name="DisableListener" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
		<ControlIn Name="Enable" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
		<ControlIn Name="SetDamagable" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
		<ControlIn Name="SetUndamageable" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
	</ControlsIn>
	<ControlsOut>
		<ControlOut Name="Damageable" AnchorDynType="0" IsDelayed="0" />
		<ControlOut Name="Destroyed" AnchorDynType="0" IsDelayed="0" />
		<ControlOut Name="Enabled" AnchorDynType="0" IsDelayed="0" />
		<ControlOut Name="Undamageable" AnchorDynType="0" IsDelayed="0" />
	</ControlsOut>
	<DatasIn>
		<DataIn Name="eInBreakable01" AnchorDynType="0" DataTypeID="entity" />
		<DataIn Name="eInBreakable02" AnchorDynType="0" DataTypeID="entity" />
		<DataIn Name="eInBreakable03" AnchorDynType="0" DataTypeID="entity" />
		<DataIn Name="eInBreakable04" AnchorDynType="0" DataTypeID="entity" />
		<DataIn Name="eInBreakable05" AnchorDynType="0" DataTypeID="entity" />
		<DataIn Name="eInBreakable06" AnchorDynType="0" DataTypeID="entity" />
		<DataIn Name="eInBreakable07" AnchorDynType="0" DataTypeID="entity" />
		<DataIn Name="eInBreakable08" AnchorDynType="0" DataTypeID="entity" />
		<DataIn Name="eInBreakable09" AnchorDynType="0" DataTypeID="entity" />
		<DataIn Name="eInBreakable10" AnchorDynType="0" DataTypeID="entity" />
	</DatasIn>
	<DatasOut />
</DominoMetadata>
