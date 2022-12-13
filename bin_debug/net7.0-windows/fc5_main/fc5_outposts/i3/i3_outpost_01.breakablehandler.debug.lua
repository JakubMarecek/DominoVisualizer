LUAC�  -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc5_main/fc5_outposts/i3/i3_outpost_01.domino
-- User graph: BreakableHandler
-- 
-- 
-- DO NOT EDIT MANUALLY THIS FILE OR YOUR CHANGES WILL BE LOST!
-- Please modify the original Domino script instead. You have been warned.

-- *** SCRIPT INPUT REFLECTION ***
--[[
<InputReflection>
    <DataIn Name="Breakable01" Type="Nomad|entity{}" />
    <DataIn Name="Breakable02" Type="Nomad|entity{}" />
    <DataIn Name="Breakable03" Type="Nomad|entity{}" />
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
        cboxRes:RegisterBox("Domino/System/Coop/Group/AddToGroupFromList_v2.lua");
        cboxRes:RegisterBox("Domino/System/Coop/List/ListReset.lua");
        cboxRes:RegisterBox("Domino/System/CreateUniqueGroup.lua");
        cboxRes:RegisterBox("Domino/System/EntityStatusListener.lua");
        cboxRes:RegisterBox("Domino/System/IsEntityLoaded_v3.lua");
        cboxRes:RegisterBox("Domino/System/IsValueNil_v3.lua");
        cboxRes:RegisterBox("Domino/System/ListWriter_v2.lua");
        cboxRes:RegisterBox("Domino/System/MetaBreakableModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/MultipleAND_v2.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/Print_v2.lua");
        cboxRes:RegisterBox("Domino/System/SetBoolean_v2.lua");
        cboxRes:RegisterBox("Domino/System/SetEntity_v2.lua");
        cboxRes:RegisterBox("Domino/System/SetGroup.lua");
        cboxRes:RegisterBox("Domino/System/ShimmerModifier_v2.lua");
    end;
end;

function export:ResetLocalGlobals()
    Globals.I3_Outpost_01 = nil;
    Globals.I3_Outpost_01 = {
        Veh_List = {
        },
        bQuestCompleted = false,
    };
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/FC5_main/FC5_Outposts/I3/I3_Outpost_01.BreakableHandler.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Breakable",
            },
            [1] = {
                name = "NonBreakable",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "EntitiesSet",
                delayed = false,
            },
        },
        controlOutCount = 1,
        dataIn = {
            [0] = {
                name = "Breakable01",
                type = "entity",
            },
            [1] = {
                name = "Breakable02",
                type = "entity",
            },
            [2] = {
                name = "Breakable03",
                type = "entity",
            },
        },
        dataInCount = 3,
        dataOut = {
            [0] = {
                name = "eBreakOut1",
                type = "entity",
            },
            [1] = {
                name = "eBreakOut2",
                type = "entity",
            },
            [2] = {
                name = "eBreakOut3",
                type = "entity",
            },
            [3] = {
                name = "gp_breakables",
                type = "group",
            },
        },
        dataOutCount = 4,
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
    metadataTable[GetPathID("Domino/System/Coop/List/ListReset.lua")] = {
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
                name = "List",
                type = "list",
            },
        },
        dataInCount = 1,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/CreateUniqueGroup.lua")] = {
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
                name = "OutGroup",
                type = "group",
            },
        },
        dataOutCount = 1,
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
    metadataTable[GetPathID("Domino/System/SetGroup.lua")] = {
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
        },
        dataInCount = 1,
        dataOut = {
            [0] = {
                name = "Target",
                type = "group",
            },
        },
        dataOutCount = 1,
    };
    metadataTable[GetPathID("Domino/System/ShimmerModifier_v2.lua")] = {
        stateless = true,
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
                name = "Out",
                delayed = false,
            },
        },
        controlOutCount = 3,
        dataIn = {
            [0] = {
                name = "B",
                type = "float",
            },
            [1] = {
                name = "G",
                type = "float",
            },
            [2] = {
                name = "R",
                type = "float",
            },
            [3] = {
                name = "Speed",
                type = "float",
            },
            [4] = {
                name = "targets",
                type = "group",
            },
        },
        dataInCount = 5,
        dataOut = {
        },
        dataOutCount = 0,
    };
end;

function export:Init(cbox)
    local l0;
    self._name = "BreakableHandler";
    self._elementPathId = "DocumentContainer|FC5_main\\FC5_Outposts\\I3\\I3_Outpost_01.domino|@BreakableHandler";
    self.EntitiesSet = DummyFunction;
    self.bBreakable = false;
    self.lSatDishes = {
    };
    self.gp_targets = nil;
    self.box_MetaBreakableModifier_v2_1 = cbox:CreateBox("Domino/System/MetaBreakableModifier_v2.lua");
    l0 = self.box_MetaBreakableModifier_v2_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MetaBreakableModifier_v2_1");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\I3\\I3_Outpost_01.domino|@BreakableHandler|62879030");
    l0:SetConnections({
        -- OnSetDamageable,
        [2] = self.f_box_MetaBreakableModifier_v2_1_OnSetDamageable,
        -- OnSetUnDamageable,
        [3] = self.f_box_MetaBreakableModifier_v2_1_OnSetUnDamageable,
    });
    self.box_EntityStatusListener_12 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_12;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_12");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\I3\\I3_Outpost_01.domino|@BreakableHandler|324429275");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_12_Loaded,
    });
    self.box_MultipleAND_v2_21 = cbox:CreateBox("Domino/System/MultipleAND_v2.lua");
    l0 = self.box_MultipleAND_v2_21;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleAND_v2_21");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\I3\\I3_Outpost_01.domino|@BreakableHandler|474670241");
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
        [0] = self.f_box_MultipleAND_v2_21_Out,
    });
    self.box_EntityStatusListener_14 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_14;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_14");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\I3\\I3_Outpost_01.domino|@BreakableHandler|826330902");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_14_Loaded,
    });
    self.box_MultipleOR_10 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_10;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_10");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\I3\\I3_Outpost_01.domino|@BreakableHandler|988280520");
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
        [0] = self.f_box_MultipleOR_10_Out,
    });
    self.box_MultipleOR_15 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_15;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_15");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\I3\\I3_Outpost_01.domino|@BreakableHandler|1410822225");
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
        [0] = self.f_box_MultipleOR_15_Out,
    });
    self.box_MultipleOR_9 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_9;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_9");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\I3\\I3_Outpost_01.domino|@BreakableHandler|1757530045");
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
    self.box_EntityStatusListener_3 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_3;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_3");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\I3\\I3_Outpost_01.domino|@BreakableHandler|2028118038");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_3_Loaded,
    });
end;

function export:Breakable()
    local params, l0;
    params = self:OnEnter_box_SetBoolean_v2_23();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\I3\\I3_Outpost_01.domino|@BreakableHandler|155179446", "155179446", "BreakableHandler", "Breakable", "box_SetBoolean_v2_23.True", self, l0:GetLuaBox());
    -- True
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:NonBreakable()
    local params, l0;
    params = self:OnEnter_box_SetBoolean_v2_23();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\I3\\I3_Outpost_01.domino|@BreakableHandler|681757731", "681757731", "BreakableHandler", "NonBreakable", "box_SetBoolean_v2_23.False", self, l0:GetLuaBox());
    -- False
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_IsValueNil_v3_17_No()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsEntityLoaded_v3_11();
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\I3\\I3_Outpost_01.domino|@BreakableHandler|228882154", "228882154", "BreakableHandler", "box_IsValueNil_v3_17.No", "box_IsEntityLoaded_v3_11.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MetaBreakableModifier_v2_1_OnSetDamageable()
    local params, l0, l1;
    params = self:OnEnter_box_ShimmerModifier_v2_26();
    l0 = self.box_MetaBreakableModifier_v2_1;
    l1 = Boxes[GetPathID("Domino/System/ShimmerModifier_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\I3\\I3_Outpost_01.domino|@BreakableHandler|1506426634", "1506426634", "BreakableHandler", "box_MetaBreakableModifier_v2_1.OnSetDamageable", "box_ShimmerModifier_v2_26.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MetaBreakableModifier_v2_1_OnSetUnDamageable()
    local params, l0, l1;
    params = self:OnEnter_box_Print_v2_25();
    l0 = self.box_MetaBreakableModifier_v2_1;
    l1 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\I3\\I3_Outpost_01.domino|@BreakableHandler|1124509962", "1124509962", "BreakableHandler", "box_MetaBreakableModifier_v2_1.OnSetUnDamageable", "box_Print_v2_25.ToScreen", l0:GetLuaBox(), l1:GetLuaBox());
    -- ToScreen
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ListReset_19_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Coop/List/ListReset.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_20();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\I3\\I3_Outpost_01.domino|@BreakableHandler|1173219787", "1173219787", "BreakableHandler", "box_ListReset_19.Out", "box_OutputOrder_v2_20.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetBoolean_v2_23_Out()
    local params, l0;
    self:OnExit_box_SetBoolean_v2_23_Out();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_CreateUniqueGroup_31();
    l0 = Boxes[GetPathID("Domino/System/CreateUniqueGroup.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\I3\\I3_Outpost_01.domino|@BreakableHandler|805917459", "805917459", "BreakableHandler", "box_SetBoolean_v2_23.Out", "box_CreateUniqueGroup_31.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_12_Loaded()
    local l0, l1;
    l0 = self.box_EntityStatusListener_12;
    l1 = self.box_MultipleOR_10;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\I3\\I3_Outpost_01.domino|@BreakableHandler|116813116", "116813116", "BreakableHandler", "box_EntityStatusListener_12.Loaded", "box_MultipleOR_10.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_IsEntityLoaded_v3_11_False()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_12();
    l0 = self.box_EntityStatusListener_12;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\I3\\I3_Outpost_01.domino|@BreakableHandler|145176848", "145176848", "BreakableHandler", "box_IsEntityLoaded_v3_11.False", "box_EntityStatusListener_12.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_IsEntityLoaded_v3_11_True()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_10;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\I3\\I3_Outpost_01.domino|@BreakableHandler|1782380582", "1782380582", "BreakableHandler", "box_IsEntityLoaded_v3_11.True", "box_MultipleOR_10.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_MultipleAND_v2_21_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_27();
    l0 = self.box_MultipleAND_v2_21;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\I3\\I3_Outpost_01.domino|@BreakableHandler|1229745367", "1229745367", "BreakableHandler", "box_MultipleAND_v2_21.Out", "box_OutputOrder_v2_27.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_IsEntityLoaded_v3_13_False()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_14();
    l0 = self.box_EntityStatusListener_14;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\I3\\I3_Outpost_01.domino|@BreakableHandler|28279898", "28279898", "BreakableHandler", "box_IsEntityLoaded_v3_13.False", "box_EntityStatusListener_14.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_IsEntityLoaded_v3_13_True()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_15;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\I3\\I3_Outpost_01.domino|@BreakableHandler|1588541622", "1588541622", "BreakableHandler", "box_IsEntityLoaded_v3_13.True", "box_MultipleOR_15.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ListWriter_v2_5_Added()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ListWriter_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_21();
    l0 = self.box_MultipleAND_v2_21;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\I3\\I3_Outpost_01.domino|@BreakableHandler|1997360794", "1997360794", "BreakableHandler", "box_ListWriter_v2_5.Added", "box_MultipleAND_v2_21.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 0);
end;

function export:f_box_ListWriter_v2_8_Added()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ListWriter_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_21();
    l0 = self.box_MultipleAND_v2_21;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\I3\\I3_Outpost_01.domino|@BreakableHandler|437099070", "437099070", "BreakableHandler", "box_ListWriter_v2_8.Added", "box_MultipleAND_v2_21.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 2);
end;

function export:f_box_SetEntity_v2_29_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_29_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ListWriter_v2_7();
    l0 = Boxes[GetPathID("Domino/System/ListWriter_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\I3\\I3_Outpost_01.domino|@BreakableHandler|1376896648", "1376896648", "BreakableHandler", "box_SetEntity_v2_29.Out", "box_ListWriter_v2_7.Add", clone:GetLuaBox(), l0:GetLuaBox());
    -- Add
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_14_Loaded()
    local l0, l1;
    l0 = self.box_EntityStatusListener_14;
    l1 = self.box_MultipleOR_15;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\I3\\I3_Outpost_01.domino|@BreakableHandler|650956486", "650956486", "BreakableHandler", "box_EntityStatusListener_14.Loaded", "box_MultipleOR_15.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_CreateUniqueGroup_31_Out()
    local params, l0;
    self:OnExit_box_CreateUniqueGroup_31_Out();
    l0 = Boxes[GetPathID("Domino/System/CreateUniqueGroup.lua")];
    local clone = l0;
    params = self:OnEnter_box_ListReset_19();
    l0 = Boxes[GetPathID("Domino/System/Coop/List/ListReset.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\I3\\I3_Outpost_01.domino|@BreakableHandler|889950402", "889950402", "BreakableHandler", "box_CreateUniqueGroup_31.Out", "box_ListReset_19.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetEntity_v2_28_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_28_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ListWriter_v2_5();
    l0 = Boxes[GetPathID("Domino/System/ListWriter_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\I3\\I3_Outpost_01.domino|@BreakableHandler|951413444", "951413444", "BreakableHandler", "box_SetEntity_v2_28.Out", "box_ListWriter_v2_5.Add", clone:GetLuaBox(), l0:GetLuaBox());
    -- Add
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_IsValueNil_v3_16_No()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsEntityLoaded_v3_2();
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\I3\\I3_Outpost_01.domino|@BreakableHandler|722122280", "722122280", "BreakableHandler", "box_IsValueNil_v3_16.No", "box_IsEntityLoaded_v3_2.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_20_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsValueNil_v3_16();
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\I3\\I3_Outpost_01.domino|@BreakableHandler|240725955", "240725955", "BreakableHandler", "box_OutputOrder_v2_20.Out", "box_IsValueNil_v3_16.Entity", clone:GetLuaBox(), l0:GetLuaBox());
    -- Entity
    l0:Exec(4, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_20_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsValueNil_v3_17();
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\I3\\I3_Outpost_01.domino|@BreakableHandler|1793252671", "1793252671", "BreakableHandler", "box_OutputOrder_v2_20.Out", "box_IsValueNil_v3_17.Entity", clone:GetLuaBox(), l0:GetLuaBox());
    -- Entity
    l0:Exec(4, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_20_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsValueNil_v3_18();
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\I3\\I3_Outpost_01.domino|@BreakableHandler|1505239295", "1505239295", "BreakableHandler", "box_OutputOrder_v2_20.Out", "box_IsValueNil_v3_18.Entity", clone:GetLuaBox(), l0:GetLuaBox());
    -- Entity
    l0:Exec(4, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetGroup_4_Out()
    local params, l0;
    self:OnExit_box_SetGroup_4_Out();
    l0 = Boxes[GetPathID("Domino/System/SetGroup.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Boolean_22();
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\I3\\I3_Outpost_01.domino|@BreakableHandler|974143306", "974143306", "BreakableHandler", "box_SetGroup_4.Out", "box_Compare_Boolean_22.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_10_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SetEntity_v2_29();
    l0 = self.box_MultipleOR_10;
    l1 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\I3\\I3_Outpost_01.domino|@BreakableHandler|271245626", "271245626", "BreakableHandler", "box_MultipleOR_10.Out", "box_SetEntity_v2_29.FromEntity", l0:GetLuaBox(), l1:GetLuaBox());
    -- FromEntity
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_IsEntityLoaded_v3_2_False()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_3();
    l0 = self.box_EntityStatusListener_3;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\I3\\I3_Outpost_01.domino|@BreakableHandler|941549023", "941549023", "BreakableHandler", "box_IsEntityLoaded_v3_2.False", "box_EntityStatusListener_3.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_IsEntityLoaded_v3_2_True()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_9;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\I3\\I3_Outpost_01.domino|@BreakableHandler|1686620715", "1686620715", "BreakableHandler", "box_IsEntityLoaded_v3_2.True", "box_MultipleOR_9.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_IsValueNil_v3_18_No()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsEntityLoaded_v3_13();
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\I3\\I3_Outpost_01.domino|@BreakableHandler|1129954372", "1129954372", "BreakableHandler", "box_IsValueNil_v3_18.No", "box_IsEntityLoaded_v3_13.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetEntity_v2_30_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_30_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ListWriter_v2_8();
    l0 = Boxes[GetPathID("Domino/System/ListWriter_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\I3\\I3_Outpost_01.domino|@BreakableHandler|1831507350", "1831507350", "BreakableHandler", "box_SetEntity_v2_30.Out", "box_ListWriter_v2_8.Add", clone:GetLuaBox(), l0:GetLuaBox());
    -- Add
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ListWriter_v2_7_Added()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ListWriter_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_21();
    l0 = self.box_MultipleAND_v2_21;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\I3\\I3_Outpost_01.domino|@BreakableHandler|1961906129", "1961906129", "BreakableHandler", "box_ListWriter_v2_7.Added", "box_MultipleAND_v2_21.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 1);
end;

function export:f_box_MultipleOR_15_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SetEntity_v2_30();
    l0 = self.box_MultipleOR_15;
    l1 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\I3\\I3_Outpost_01.domino|@BreakableHandler|1627986799", "1627986799", "BreakableHandler", "box_MultipleOR_15.Out", "box_SetEntity_v2_30.FromEntity", l0:GetLuaBox(), l1:GetLuaBox());
    -- FromEntity
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_27_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_AddToGroupFromList_v2_6();
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/AddToGroupFromList_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\I3\\I3_Outpost_01.domino|@BreakableHandler|730279416", "730279416", "BreakableHandler", "box_OutputOrder_v2_27.Out", "box_AddToGroupFromList_v2_6.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_27_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\I3\\I3_Outpost_01.domino|@BreakableHandler|1587162620", "1587162620", "BreakableHandler", "box_OutputOrder_v2_27.Out", "EntitiesSet", clone:GetLuaBox(), self);
    self:EntitiesSet();
end;

function export:f_box_Compare_Boolean_22_A_is_False()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_MetaBreakableModifier_v2_1();
    l0 = self.box_MetaBreakableModifier_v2_1;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\I3\\I3_Outpost_01.domino|@BreakableHandler|1387877802", "1387877802", "BreakableHandler", "box_Compare_Boolean_22.A_is_False", "box_MetaBreakableModifier_v2_1.SetUnDamageable", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetUnDamageable
    l0:Exec(3, params);
end;

function export:f_box_Compare_Boolean_22_A_is_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_MetaBreakableModifier_v2_1();
    l0 = self.box_MetaBreakableModifier_v2_1;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\I3\\I3_Outpost_01.domino|@BreakableHandler|1310199736", "1310199736", "BreakableHandler", "box_Compare_Boolean_22.A_is_True", "box_MetaBreakableModifier_v2_1.SetDamageable", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetDamageable
    l0:Exec(0, params);
end;

function export:f_box_MultipleOR_9_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SetEntity_v2_28();
    l0 = self.box_MultipleOR_9;
    l1 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\I3\\I3_Outpost_01.domino|@BreakableHandler|2138239488", "2138239488", "BreakableHandler", "box_MultipleOR_9.Out", "box_SetEntity_v2_28.FromEntity", l0:GetLuaBox(), l1:GetLuaBox());
    -- FromEntity
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_AddToGroupFromList_v2_6_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/AddToGroupFromList_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetGroup_4();
    l0 = Boxes[GetPathID("Domino/System/SetGroup.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\I3\\I3_Outpost_01.domino|@BreakableHandler|1302175467", "1302175467", "BreakableHandler", "box_AddToGroupFromList_v2_6.Out", "box_SetGroup_4.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_3_Loaded()
    local l0, l1;
    l0 = self.box_EntityStatusListener_3;
    l1 = self.box_MultipleOR_9;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\I3\\I3_Outpost_01.domino|@BreakableHandler|1742289926", "1742289926", "BreakableHandler", "box_EntityStatusListener_3.Loaded", "box_MultipleOR_9.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_ShimmerModifier_v2_26_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ShimmerModifier_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_24();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\I3\\I3_Outpost_01.domino|@BreakableHandler|1231996753", "1231996753", "BreakableHandler", "box_ShimmerModifier_v2_26.Enabled", "box_Print_v2_24.ToScreen", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToScreen
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:OnEnter_box_IsValueNil_v3_17()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsValueNil_v3_17");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\I3\\I3_Outpost_01.domino|@BreakableHandler|23835771");
    l0:SetConnections({
        -- No,
        [0] = self.f_box_IsValueNil_v3_17_No,
    });
    params = {
        -- ent,
        [4] = self.Breakable02,
    };
    return params;
end;

function export:OnEnter_box_MetaBreakableModifier_v2_1()
    local params;
    params = {
        -- targets,
        [0] = self.gp_targets,
    };
    return params;
end;

function export:OnEnter_box_ListReset_19()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Coop/List/ListReset.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ListReset_19");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\I3\\I3_Outpost_01.domino|@BreakableHandler|178116197");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ListReset_19_Out,
    });
    params = {
        -- List,
        [0] = self.lSatDishes,
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_23()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_23");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\I3\\I3_Outpost_01.domino|@BreakableHandler|256569014");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_23_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_12()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = self.Breakable02,
    };
    return params;
end;

function export:OnEnter_box_IsEntityLoaded_v3_11()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsEntityLoaded_v3_11");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\I3\\I3_Outpost_01.domino|@BreakableHandler|348721345");
    l0:SetConnections({
        -- False,
        [0] = self.f_box_IsEntityLoaded_v3_11_False,
        -- True,
        [1] = self.f_box_IsEntityLoaded_v3_11_True,
    });
    params = {
        -- entityId,
        [0] = self.Breakable02,
    };
    return params;
end;

function export:OnEnter_box_MultipleAND_v2_21()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_IsEntityLoaded_v3_13()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsEntityLoaded_v3_13");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\I3\\I3_Outpost_01.domino|@BreakableHandler|475008677");
    l0:SetConnections({
        -- False,
        [0] = self.f_box_IsEntityLoaded_v3_13_False,
        -- True,
        [1] = self.f_box_IsEntityLoaded_v3_13_True,
    });
    params = {
        -- entityId,
        [0] = self.Breakable03,
    };
    return params;
end;

function export:OnEnter_box_ListWriter_v2_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ListWriter_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ListWriter_v2_5");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\I3\\I3_Outpost_01.domino|@BreakableHandler|644442386");
    l0:SetConnections({
        -- Added,
        [0] = self.f_box_ListWriter_v2_5_Added,
    });
    params = {
        -- Data,
        [0] = self.Breakable01,
        -- Input,
        [2] = self.lSatDishes,
    };
    return params;
end;

function export:OnEnter_box_ListWriter_v2_8()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ListWriter_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ListWriter_v2_8");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\I3\\I3_Outpost_01.domino|@BreakableHandler|729084441");
    l0:SetConnections({
        -- Added,
        [0] = self.f_box_ListWriter_v2_8_Added,
    });
    params = {
        -- Data,
        [0] = self.Breakable03,
        -- Input,
        [2] = self.lSatDishes,
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_29()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_29");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\I3\\I3_Outpost_01.domino|@BreakableHandler|754192186");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_29_Out,
    });
    params = {
        -- Entity,
        [0] = self.Breakable02,
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_14()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = self.Breakable03,
    };
    return params;
end;

function export:OnEnter_box_CreateUniqueGroup_31()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CreateUniqueGroup.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CreateUniqueGroup_31");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\I3\\I3_Outpost_01.domino|@BreakableHandler|830365017");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_CreateUniqueGroup_31_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Print_v2_25()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_25");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\I3\\I3_Outpost_01.domino|@BreakableHandler|905486396");
    l0:SetConnections({
    });
    params = {
        -- color,
        [1] = "white",
        -- duration,
        [3] = 5,
        -- path,
        [7] = "C:\\Print.log",
        -- str,
        [8] = "Not Damageable",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_28()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_28");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\I3\\I3_Outpost_01.domino|@BreakableHandler|907068178");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_28_Out,
    });
    params = {
        -- Entity,
        [0] = self.Breakable01,
    };
    return params;
end;

function export:OnEnter_box_IsValueNil_v3_16()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsValueNil_v3_16");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\I3\\I3_Outpost_01.domino|@BreakableHandler|941941203");
    l0:SetConnections({
        -- No,
        [0] = self.f_box_IsValueNil_v3_16_No,
    });
    params = {
        -- ent,
        [4] = self.Breakable01,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_20()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_20");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\I3\\I3_Outpost_01.domino|@BreakableHandler|946381104");
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
                [0] = self.f_box_OutputOrder_v2_20_Out_0,
                [1] = self.f_box_OutputOrder_v2_20_Out_1,
                [2] = self.f_box_OutputOrder_v2_20_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SetGroup_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetGroup.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetGroup_4");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\I3\\I3_Outpost_01.domino|@BreakableHandler|977318065");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetGroup_4_Out,
    });
    params = {
        -- Group,
        [0] = self.gp_targets,
    };
    return params;
end;

function export:OnEnter_box_IsEntityLoaded_v3_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsEntityLoaded_v3_2");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\I3\\I3_Outpost_01.domino|@BreakableHandler|1035657614");
    l0:SetConnections({
        -- False,
        [0] = self.f_box_IsEntityLoaded_v3_2_False,
        -- True,
        [1] = self.f_box_IsEntityLoaded_v3_2_True,
    });
    params = {
        -- entityId,
        [0] = self.Breakable01,
    };
    return params;
end;

function export:OnEnter_box_Print_v2_24()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_24");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\I3\\I3_Outpost_01.domino|@BreakableHandler|1118744545");
    l0:SetConnections({
    });
    params = {
        -- color,
        [1] = "white",
        -- duration,
        [3] = 5,
        -- path,
        [7] = "C:\\Print.log",
        -- str,
        [8] = "Damagable",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_IsValueNil_v3_18()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsValueNil_v3_18");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\I3\\I3_Outpost_01.domino|@BreakableHandler|1123062476");
    l0:SetConnections({
        -- No,
        [0] = self.f_box_IsValueNil_v3_18_No,
    });
    params = {
        -- ent,
        [4] = self.Breakable03,
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_30()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_30");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\I3\\I3_Outpost_01.domino|@BreakableHandler|1154557768");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_30_Out,
    });
    params = {
        -- Entity,
        [0] = self.Breakable03,
    };
    return params;
end;

function export:OnEnter_box_ListWriter_v2_7()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ListWriter_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ListWriter_v2_7");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\I3\\I3_Outpost_01.domino|@BreakableHandler|1259139471");
    l0:SetConnections({
        -- Added,
        [0] = self.f_box_ListWriter_v2_7_Added,
    });
    params = {
        -- Data,
        [0] = self.Breakable02,
        -- Input,
        [2] = self.lSatDishes,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_27()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_27");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\I3\\I3_Outpost_01.domino|@BreakableHandler|1609070545");
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

function export:OnEnter_box_Compare_Boolean_22()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_22");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\I3\\I3_Outpost_01.domino|@BreakableHandler|1687611964");
    l0:SetConnections({
        -- A_is_False,
        [1] = self.f_box_Compare_Boolean_22_A_is_False,
        -- A_is_True,
        [2] = self.f_box_Compare_Boolean_22_A_is_True,
    });
    params = {
        -- A,
        [0] = self.bBreakable,
    };
    return params;
end;

function export:OnEnter_box_AddToGroupFromList_v2_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/AddToGroupFromList_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_AddToGroupFromList_v2_6");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\I3\\I3_Outpost_01.domino|@BreakableHandler|1948190939");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_AddToGroupFromList_v2_6_Out,
    });
    params = {
        -- Group,
        [0] = self.gp_targets,
        -- Pawns,
        [1] = self.lSatDishes,
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_3()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = self.Breakable01,
    };
    return params;
end;

function export:OnEnter_box_ShimmerModifier_v2_26()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ShimmerModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ShimmerModifier_v2_26");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\I3\\I3_Outpost_01.domino|@BreakableHandler|2089732383");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_ShimmerModifier_v2_26_Enabled,
    });
    params = {
        -- B,
        [0] = -1,
        -- G,
        [1] = -1,
        -- R,
        [2] = -1,
        -- Speed,
        [3] = -1,
        -- targets,
        [4] = self.gp_targets,
    };
    return params;
end;

function export:OnExit_box_SetBoolean_v2_23_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    self.bBreakable = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_29_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.eBreakOut2 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_CreateUniqueGroup_31_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CreateUniqueGroup.lua")];
    self.gp_targets = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_28_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.eBreakOut1 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetGroup_4_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetGroup.lua")];
    self.gp_breakables = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_30_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.eBreakOut3 = l0:GetDataOutValue(0);
end;

-- Empty out anchor definitions
function export:EntitiesSet()
    
end;
_compilerVersion = 60;
<DominoMetadata IsStateless="0" IsSystem="0">
	<ControlsIn>
		<ControlIn Name="Breakable" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
		<ControlIn Name="NonBreakable" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
	</ControlsIn>
	<ControlsOut>
		<ControlOut Name="EntitiesSet" AnchorDynType="0" IsDelayed="0" />
	</ControlsOut>
	<DatasIn>
		<DataIn Name="Breakable01" AnchorDynType="0" DataTypeID="entity" />
		<DataIn Name="Breakable02" AnchorDynType="0" DataTypeID="entity" />
		<DataIn Name="Breakable03" AnchorDynType="0" DataTypeID="entity" />
	</DatasIn>
	<DatasOut>
		<DataOut Name="eBreakOut1" AnchorDynType="0" DataTypeID="entity" />
		<DataOut Name="eBreakOut2" AnchorDynType="0" DataTypeID="entity" />
		<DataOut Name="eBreakOut3" AnchorDynType="0" DataTypeID="entity" />
		<DataOut Name="gp_breakables" AnchorDynType="0" DataTypeID="group" />
	</DatasOut>
</DominoMetadata>
