LUACF]  -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc5_main/fc5_activities/questlines/uniquecharacters/uni11/uni11_020/uni11_020_omni_tracker.domino
-- User graph: _UNI11_020_CollectMarkers
-- 
-- 
-- DO NOT EDIT MANUALLY THIS FILE OR YOUR CHANGES WILL BE LOST!
-- Please modify the original Domino script instead. You have been warned.

-- *** SCRIPT INPUT REFLECTION ***
--[[
<InputReflection>
    <DataIn Name="e_Bull" Type="Nomad|entity{}" />
    <DataIn Name="e_CollectMarker" Type="Nomad|entity{}" />
    <DataIn Name="o_CollectObjective" Type="Nomad|oasis" />
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
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Common.BindMarkerOverHead_v2.debug.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua");
        cboxRes:RegisterBox("Domino/System/EntityStatusListener.lua");
        cboxRes:RegisterBox("Domino/System/IsEntityLoaded_v3.lua");
        cboxRes:RegisterBox("Domino/System/IsValueNil_v3.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/OnceOnly_v3.lua");
        cboxRes:RegisterBox("Domino/System/SimpleNode.lua");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
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
    metadataTable[GetPathID("Domino/Library/Sp/Lib_Common.BindMarkerOverHead_v2.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Bind",
            },
            [1] = {
                name = "UnBind",
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
                name = "BoneName",
                type = "string",
            },
            [1] = {
                name = "eMobileMarker",
                type = "entity",
            },
            [2] = {
                name = "eNPC",
                type = "entity",
            },
            [3] = {
                name = "fHeight",
                type = "float",
            },
        },
        dataInCount = 4,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")] = {
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
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "CharacterId",
                type = "genericdb",
            },
            [1] = {
                name = "Marker",
                type = "entity",
            },
            [2] = {
                name = "ObjectiveId",
                type = "oasis",
            },
        },
        dataInCount = 3,
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
    self._name = "_UNI11_020_CollectMarkers";
    self._elementPathId = "DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_Omni_Tracker.domino|@_UNI11_020_CollectMarkers";
    self.box_BindMarkerOverHead_v2_3 = cbox:CreateBox("Domino/Library/Sp/Lib_Common.BindMarkerOverHead_v2.debug.lua");
    l0 = self.box_BindMarkerOverHead_v2_3;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_BindMarkerOverHead_v2_3");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_Omni_Tracker.domino|@_UNI11_020_CollectMarkers|877043240");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_BindMarkerOverHead_v2_3_Out,
    });
    self.box_EntityStatusListener_2 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_2");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_Omni_Tracker.domino|@_UNI11_020_CollectMarkers|1020988545");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_2_Loaded,
        -- Unloaded,
        [3] = self.f_box_EntityStatusListener_2_Unloaded,
    });
    self.box_MultipleOR_4 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_4;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_4");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_Omni_Tracker.domino|@_UNI11_020_CollectMarkers|1156383711");
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
        [0] = self.f_box_MultipleOR_4_Out,
    });
    self.box_OnceOnly_v3_6 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_6;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_6");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_Omni_Tracker.domino|@_UNI11_020_CollectMarkers|1803236841");
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
                [0] = self.f_box_OnceOnly_v3_6_Out_0,
            },
            count = 2,
        },
    });
end;

function export:Disable()
    local params, l0;
    params = self:OnEnter_box_Simple_Node_5();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_Omni_Tracker.domino|@_UNI11_020_CollectMarkers|722720381", "722720381", "_UNI11_020_CollectMarkers", "Disable", "box_Simple_Node_5.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:Enable()
    local params, l0;
    params = self:OnEnter_box_IsValueNil_v3_7();
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_Omni_Tracker.domino|@_UNI11_020_CollectMarkers|229255350", "229255350", "_UNI11_020_CollectMarkers", "Enable", "box_IsValueNil_v3_7.Entity", self, l0:GetLuaBox());
    -- Entity
    l0:Exec(4, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_5_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_4;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_Omni_Tracker.domino|@_UNI11_020_CollectMarkers|1397762084", "1397762084", "_UNI11_020_CollectMarkers", "box_Simple_Node_5.Out", "box_MultipleOR_4.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
    params = self:OnEnter_box_EntityStatusListener_2();
    l0 = self.box_EntityStatusListener_2;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_Omni_Tracker.domino|@_UNI11_020_CollectMarkers|471263817", "471263817", "_UNI11_020_CollectMarkers", "box_Simple_Node_5.Out", "box_EntityStatusListener_2.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    params = self:OnEnter_box_BindMarkerOverHead_v2_3();
    l0 = self.box_BindMarkerOverHead_v2_3;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_Omni_Tracker.domino|@_UNI11_020_CollectMarkers|1945238166", "1945238166", "_UNI11_020_CollectMarkers", "box_Simple_Node_5.Out", "box_BindMarkerOverHead_v2_3.UnBind", clone:GetLuaBox(), l0:GetLuaBox());
    -- UnBind
    l0:Exec(1, params);
end;

function export:f_box_BindMarkerOverHead_v2_3_Out()
    local l0, l1;
    l0 = self.box_BindMarkerOverHead_v2_3;
    l1 = self.box_OnceOnly_v3_6;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_Omni_Tracker.domino|@_UNI11_020_CollectMarkers|435775212", "435775212", "_UNI11_020_CollectMarkers", "box_BindMarkerOverHead_v2_3.Out", "box_OnceOnly_v3_6.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_EntityStatusListener_2_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_1();
    l0 = self.box_EntityStatusListener_2;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_Omni_Tracker.domino|@_UNI11_020_CollectMarkers|249041737", "249041737", "_UNI11_020_CollectMarkers", "box_EntityStatusListener_2.Loaded", "box_ActivityObjectiveMarkerModifier_v3_1.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_2_Unloaded()
    local l0, l1;
    l0 = self.box_EntityStatusListener_2;
    l1 = self.box_MultipleOR_4;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_Omni_Tracker.domino|@_UNI11_020_CollectMarkers|814674023", "814674023", "_UNI11_020_CollectMarkers", "box_EntityStatusListener_2.Unloaded", "box_MultipleOR_4.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_MultipleOR_4_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_1();
    l0 = self.box_MultipleOR_4;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_Omni_Tracker.domino|@_UNI11_020_CollectMarkers|1894568109", "1894568109", "_UNI11_020_CollectMarkers", "box_MultipleOR_4.Out", "box_ActivityObjectiveMarkerModifier_v3_1.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_IsEntityLoaded_v3_8_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_BindMarkerOverHead_v2_3();
    l0 = self.box_BindMarkerOverHead_v2_3;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_Omni_Tracker.domino|@_UNI11_020_CollectMarkers|1407496832", "1407496832", "_UNI11_020_CollectMarkers", "box_IsEntityLoaded_v3_8.True", "box_BindMarkerOverHead_v2_3.Bind", clone:GetLuaBox(), l0:GetLuaBox());
    -- Bind
    l0:Exec(0, params);
end;

function export:f_box_IsValueNil_v3_7_No()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsEntityLoaded_v3_8();
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_Omni_Tracker.domino|@_UNI11_020_CollectMarkers|845345344", "845345344", "_UNI11_020_CollectMarkers", "box_IsValueNil_v3_7.No", "box_IsEntityLoaded_v3_8.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_6_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_EntityStatusListener_2();
    l0 = self.box_OnceOnly_v3_6;
    l1 = self.box_EntityStatusListener_2;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_Omni_Tracker.domino|@_UNI11_020_CollectMarkers|1304686062", "1304686062", "_UNI11_020_CollectMarkers", "box_OnceOnly_v3_6.Out", "box_EntityStatusListener_2.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:OnEnter_box_Simple_Node_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_5");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_Omni_Tracker.domino|@_UNI11_020_CollectMarkers|@n_CleanUp");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_5_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_BindMarkerOverHead_v2_3()
    local params;
    params = {
        -- BoneName,
        [0] = "Genitals",
        -- eMobileMarker,
        [1] = self.e_CollectMarker,
        -- eNPC,
        [2] = self.e_Bull,
        -- fHeight,
        [3] = 0,
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
        [2] = self.e_Bull,
    };
    return params;
end;

function export:OnEnter_box_IsEntityLoaded_v3_8()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsEntityLoaded_v3_8");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_Omni_Tracker.domino|@_UNI11_020_CollectMarkers|1203185291");
    l0:SetConnections({
        -- True,
        [1] = self.f_box_IsEntityLoaded_v3_8_True,
    });
    params = {
        -- entityId,
        [0] = self.e_Bull,
    };
    return params;
end;

function export:OnEnter_box_IsValueNil_v3_7()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsValueNil_v3_7");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_Omni_Tracker.domino|@_UNI11_020_CollectMarkers|1340128674");
    l0:SetConnections({
        -- No,
        [0] = self.f_box_IsValueNil_v3_7_No,
    });
    params = {
        -- ent,
        [4] = self.e_Bull,
    };
    return params;
end;

function export:OnEnter_box_ActivityObjectiveMarkerModifier_v3_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityObjectiveMarkerModifier_v3_1");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_Omni_Tracker.domino|@_UNI11_020_CollectMarkers|1829442669");
    l0:SetConnections({
    });
    params = {
        -- Marker,
        [1] = self.e_CollectMarker,
        -- ObjectiveId,
        [2] = self.o_CollectObjective,
    };
    return params;
end;

-- Empty out anchor definitions
_compilerVersion = 60;
<DominoMetadata IsStateless="0" IsSystem="0">
	<ControlsIn>
		<ControlIn Name="Disable" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
		<ControlIn Name="Enable" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
	</ControlsIn>
	<ControlsOut />
	<DatasIn>
		<DataIn Name="e_Bull" AnchorDynType="0" DataTypeID="entity" />
		<DataIn Name="e_CollectMarker" AnchorDynType="0" DataTypeID="entity" />
		<DataIn Name="o_CollectObjective" AnchorDynType="0" DataTypeID="oasis" />
	</DatasIn>
	<DatasOut />
</DominoMetadata>
