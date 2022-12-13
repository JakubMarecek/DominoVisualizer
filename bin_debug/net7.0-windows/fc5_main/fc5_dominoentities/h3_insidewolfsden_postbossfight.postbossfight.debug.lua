LUAC�a  -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc5_main/fc5_dominoentities/h3_insidewolfsden_postbossfight.domino
-- User graph: PostBossFight
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
        cboxRes:RegisterBox("Domino/System/EntityStatusListener.lua");
        cboxRes:RegisterBox("Domino/System/MissionBlockLayer.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/ProximityTrigger_v2.lua");
        cboxRes:RegisterBox("Domino/System/SimpleNode.lua");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/FC5_main/FC5_DominoEntities/H3_InsideWolfsDen_PostBossFight.PostBossFight.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/System/MissionBlockLayer.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "Activate",
            },
            [1] = {
                name = "Deactivate",
            },
            [2] = {
                name = "Disable",
            },
        },
        controlInCount = 3,
        controlOut = {
            [0] = {
                name = "Activated",
                delayed = false,
            },
            [1] = {
                name = "Deactivated",
                delayed = false,
            },
            [2] = {
                name = "Disabled",
                delayed = false,
            },
        },
        controlOutCount = 3,
        dataIn = {
            [0] = {
                name = "missionBlockId",
                type = "missionblock",
            },
            [1] = {
                name = "missionLayerId",
                type = "missionblocklayer",
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
    self._name = "PostBossFight";
    self._elementPathId = "DocumentContainer|FC5_main\\FC5_DominoEntities\\H3_InsideWolfsDen_PostBossFight.domino|@PostBossFight";
    self.box_EntityStatusListener_4 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_4;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_4");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_DominoEntities\\H3_InsideWolfsDen_PostBossFight.domino|@PostBossFight|670548661");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_4_Loaded,
    });
    self.box_MultipleOR_1 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_1");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_DominoEntities\\H3_InsideWolfsDen_PostBossFight.domino|@PostBossFight|1595532030");
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
        [0] = self.f_box_MultipleOR_1_Out,
    });
    self.box_ProximityTrigger_v2_8 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_8;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_8");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_DominoEntities\\H3_InsideWolfsDen_PostBossFight.domino|@PostBossFight|1765699454");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v2_8_Enter,
    });
    self.box_MultipleOR_7 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_7;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_7");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_DominoEntities\\H3_InsideWolfsDen_PostBossFight.domino|@PostBossFight|2078485117");
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
        [0] = self.f_box_MultipleOR_7_Out,
    });
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_GetActivityState_v2_3();
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_DominoEntities\\H3_InsideWolfsDen_PostBossFight.domino|@PostBossFight|203030153", "203030153", "PostBossFight", "In", "box_GetActivityState_v2_3.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GetActivityState_v2_3_Active()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_1;
    TraceConnection("DocumentContainer|FC5_main\\FC5_DominoEntities\\H3_InsideWolfsDen_PostBossFight.domino|@PostBossFight|1693914952", "1693914952", "PostBossFight", "box_GetActivityState_v2_3.Active", "box_MultipleOR_1.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_GetActivityState_v2_3_Canceled()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_1;
    TraceConnection("DocumentContainer|FC5_main\\FC5_DominoEntities\\H3_InsideWolfsDen_PostBossFight.domino|@PostBossFight|670566168", "670566168", "PostBossFight", "box_GetActivityState_v2_3.Canceled", "box_MultipleOR_1.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 4);
end;

function export:f_box_GetActivityState_v2_3_Completed()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_2();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_DominoEntities\\H3_InsideWolfsDen_PostBossFight.domino|@PostBossFight|471229054", "471229054", "PostBossFight", "box_GetActivityState_v2_3.Completed", "box_Simple_Node_2.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GetActivityState_v2_3_Failed()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_1;
    TraceConnection("DocumentContainer|FC5_main\\FC5_DominoEntities\\H3_InsideWolfsDen_PostBossFight.domino|@PostBossFight|1148348487", "1148348487", "PostBossFight", "box_GetActivityState_v2_3.Failed", "box_MultipleOR_1.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 3);
end;

function export:f_box_GetActivityState_v2_3_Inactive()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_1;
    TraceConnection("DocumentContainer|FC5_main\\FC5_DominoEntities\\H3_InsideWolfsDen_PostBossFight.domino|@PostBossFight|1811396744", "1811396744", "PostBossFight", "box_GetActivityState_v2_3.Inactive", "box_MultipleOR_1.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_GetActivityState_v2_3_Unavailable()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_1;
    TraceConnection("DocumentContainer|FC5_main\\FC5_DominoEntities\\H3_InsideWolfsDen_PostBossFight.domino|@PostBossFight|2007847079", "2007847079", "PostBossFight", "box_GetActivityState_v2_3.Unavailable", "box_MultipleOR_1.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_GetActivityState_v2_5_Active()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_7;
    TraceConnection("DocumentContainer|FC5_main\\FC5_DominoEntities\\H3_InsideWolfsDen_PostBossFight.domino|@PostBossFight|1664303507", "1664303507", "PostBossFight", "box_GetActivityState_v2_5.Active", "box_MultipleOR_7.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_GetActivityState_v2_5_Canceled()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_7;
    TraceConnection("DocumentContainer|FC5_main\\FC5_DominoEntities\\H3_InsideWolfsDen_PostBossFight.domino|@PostBossFight|1837729621", "1837729621", "PostBossFight", "box_GetActivityState_v2_5.Canceled", "box_MultipleOR_7.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 4);
end;

function export:f_box_GetActivityState_v2_5_Completed()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_4();
    l0 = self.box_EntityStatusListener_4;
    TraceConnection("DocumentContainer|FC5_main\\FC5_DominoEntities\\H3_InsideWolfsDen_PostBossFight.domino|@PostBossFight|1135140943", "1135140943", "PostBossFight", "box_GetActivityState_v2_5.Completed", "box_EntityStatusListener_4.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_GetActivityState_v2_5_Failed()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_7;
    TraceConnection("DocumentContainer|FC5_main\\FC5_DominoEntities\\H3_InsideWolfsDen_PostBossFight.domino|@PostBossFight|1732255766", "1732255766", "PostBossFight", "box_GetActivityState_v2_5.Failed", "box_MultipleOR_7.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 3);
end;

function export:f_box_GetActivityState_v2_5_Inactive()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_7;
    TraceConnection("DocumentContainer|FC5_main\\FC5_DominoEntities\\H3_InsideWolfsDen_PostBossFight.domino|@PostBossFight|219395529", "219395529", "PostBossFight", "box_GetActivityState_v2_5.Inactive", "box_MultipleOR_7.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_GetActivityState_v2_5_Unavailable()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_7;
    TraceConnection("DocumentContainer|FC5_main\\FC5_DominoEntities\\H3_InsideWolfsDen_PostBossFight.domino|@PostBossFight|219227416", "219227416", "PostBossFight", "box_GetActivityState_v2_5.Unavailable", "box_MultipleOR_7.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_EntityStatusListener_4_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityTrigger_v2_8();
    l0 = self.box_EntityStatusListener_4;
    l1 = self.box_ProximityTrigger_v2_8;
    TraceConnection("DocumentContainer|FC5_main\\FC5_DominoEntities\\H3_InsideWolfsDen_PostBossFight.domino|@PostBossFight|2096134772", "2096134772", "PostBossFight", "box_EntityStatusListener_4.Loaded", "box_ProximityTrigger_v2_8.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_MissionBlockLayer_9_Activated()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_10();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_DominoEntities\\H3_InsideWolfsDen_PostBossFight.domino|@PostBossFight|616147131", "616147131", "PostBossFight", "box_MissionBlockLayer_9.Activated", "box_MissionBlockLayer_10.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_1_Out()
    local params, l0, l1;
    params = self:OnEnter_box_GetActivityState_v2_5();
    l0 = self.box_MultipleOR_1;
    l1 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_DominoEntities\\H3_InsideWolfsDen_PostBossFight.domino|@PostBossFight|1104036450", "1104036450", "PostBossFight", "box_MultipleOR_1.Out", "box_GetActivityState_v2_5.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ProximityTrigger_v2_8_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_MissionBlockLayer_9();
    l0 = self.box_ProximityTrigger_v2_8;
    l1 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_DominoEntities\\H3_InsideWolfsDen_PostBossFight.domino|@PostBossFight|1953178097", "1953178097", "PostBossFight", "box_ProximityTrigger_v2_8.Enter", "box_MissionBlockLayer_9.Activate", l0:GetLuaBox(), l1:GetLuaBox());
    -- Activate
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_7_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_6();
    l0 = self.box_MultipleOR_7;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_DominoEntities\\H3_InsideWolfsDen_PostBossFight.domino|@PostBossFight|303279128", "303279128", "PostBossFight", "box_MultipleOR_7.Out", "box_Simple_Node_6.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:OnEnter_box_GetActivityState_v2_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetActivityState_v2_3");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_DominoEntities\\H3_InsideWolfsDen_PostBossFight.domino|@PostBossFight|208295688");
    l0:SetConnections({
        -- Active,
        [0] = self.f_box_GetActivityState_v2_3_Active,
        -- Canceled,
        [1] = self.f_box_GetActivityState_v2_3_Canceled,
        -- Completed,
        [2] = self.f_box_GetActivityState_v2_3_Completed,
        -- Failed,
        [3] = self.f_box_GetActivityState_v2_3_Failed,
        -- Inactive,
        [4] = self.f_box_GetActivityState_v2_3_Inactive,
        -- Unavailable,
        [6] = self.f_box_GetActivityState_v2_3_Unavailable,
    });
    params = {
        -- activityDescriptorID,
        [0] = "9015221228739711",
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_10()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_10");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_DominoEntities\\H3_InsideWolfsDen_PostBossFight.domino|@PostBossFight|297841055");
    l0:SetConnections({
    });
    params = {
        -- missionBlockId,
        [0] = "54181816736651894",
        -- missionLayerId,
        [1] = "63189015991392886",
    };
    return params;
end;

function export:OnEnter_box_GetActivityState_v2_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetActivityState_v2_5");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_DominoEntities\\H3_InsideWolfsDen_PostBossFight.domino|@PostBossFight|486646126");
    l0:SetConnections({
        -- Active,
        [0] = self.f_box_GetActivityState_v2_5_Active,
        -- Canceled,
        [1] = self.f_box_GetActivityState_v2_5_Canceled,
        -- Completed,
        [2] = self.f_box_GetActivityState_v2_5_Completed,
        -- Failed,
        [3] = self.f_box_GetActivityState_v2_5_Failed,
        -- Inactive,
        [4] = self.f_box_GetActivityState_v2_5_Inactive,
        -- Unavailable,
        [6] = self.f_box_GetActivityState_v2_5_Unavailable,
    });
    params = {
        -- activityDescriptorID,
        [0] = "9015221228719349",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_4()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2105795413672999476",
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_6()
    local params, l0;
    DrawTextToScreen("Comment: LT02_040_B30_NotComplete", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'Simple Node')-- Comment: LT02_040_B30_NotComplete");
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_6");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_DominoEntities\\H3_InsideWolfsDen_PostBossFight.domino|@PostBossFight|1085112232");
    l0:SetConnections({
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_9()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_9");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_DominoEntities\\H3_InsideWolfsDen_PostBossFight.domino|@PostBossFight|1395546272");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_MissionBlockLayer_9_Activated,
    });
    params = {
        -- missionBlockId,
        [0] = "54181816736651894",
        -- missionLayerId,
        [1] = "27160218976512919",
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_8()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- colliderFilterId,
        [1] = "#ED455357",
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2105795413672999476",
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_2()
    local params, l0;
    DrawTextToScreen("Comment: LT02_050_Complete", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'Simple Node')-- Comment: LT02_050_Complete");
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_2");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_DominoEntities\\H3_InsideWolfsDen_PostBossFight.domino|@PostBossFight|1838841709");
    l0:SetConnections({
    });
    params = {
    };
    return params;
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
