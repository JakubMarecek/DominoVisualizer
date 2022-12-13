LUAC�d  -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc5_main/fc5_dominoentities/h3_insidewolfsden_postbossfight.domino
-- User graph: PostBossFightExit
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
    metadataTable[GetPathID("Domino/user/FC5_main/FC5_DominoEntities/H3_InsideWolfsDen_PostBossFight.PostBossFightExit.debug.lua")] = {
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
    self._name = "PostBossFightExit";
    self._elementPathId = "DocumentContainer|FC5_main\\FC5_DominoEntities\\H3_InsideWolfsDen_PostBossFight.domino|@PostBossFightExit";
    self.box_EntityStatusListener_4 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_4;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_4");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_DominoEntities\\H3_InsideWolfsDen_PostBossFight.domino|@PostBossFightExit|150150652");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_4_Loaded,
    });
    self.box_ProximityTrigger_v2_3 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_3;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_3");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_DominoEntities\\H3_InsideWolfsDen_PostBossFight.domino|@PostBossFightExit|1031992929");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_ProximityTrigger_v2_3_Disabled,
        -- OnEmpty,
        [4] = self.f_box_ProximityTrigger_v2_3_OnEmpty,
    });
    self.box_MultipleOR_10 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_10;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_10");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_DominoEntities\\H3_InsideWolfsDen_PostBossFight.domino|@PostBossFightExit|1165983218");
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
        [0] = self.f_box_MultipleOR_10_Out,
    });
    self.box_MultipleOR_5 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_5;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_5");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_DominoEntities\\H3_InsideWolfsDen_PostBossFight.domino|@PostBossFightExit|1870910840");
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
        [0] = self.f_box_MultipleOR_5_Out,
    });
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_GetActivityState_v2_9();
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_DominoEntities\\H3_InsideWolfsDen_PostBossFight.domino|@PostBossFightExit|1261238702", "1261238702", "PostBossFightExit", "In", "box_GetActivityState_v2_9.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_4_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityTrigger_v2_3();
    l0 = self.box_EntityStatusListener_4;
    l1 = self.box_ProximityTrigger_v2_3;
    TraceConnection("DocumentContainer|FC5_main\\FC5_DominoEntities\\H3_InsideWolfsDen_PostBossFight.domino|@PostBossFightExit|1575420088", "1575420088", "PostBossFightExit", "box_EntityStatusListener_4.Loaded", "box_ProximityTrigger_v2_3.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_GetActivityState_v2_6_Active()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_5;
    TraceConnection("DocumentContainer|FC5_main\\FC5_DominoEntities\\H3_InsideWolfsDen_PostBossFight.domino|@PostBossFightExit|505639181", "505639181", "PostBossFightExit", "box_GetActivityState_v2_6.Active", "box_MultipleOR_5.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_GetActivityState_v2_6_Canceled()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_5;
    TraceConnection("DocumentContainer|FC5_main\\FC5_DominoEntities\\H3_InsideWolfsDen_PostBossFight.domino|@PostBossFightExit|195022021", "195022021", "PostBossFightExit", "box_GetActivityState_v2_6.Canceled", "box_MultipleOR_5.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 4);
end;

function export:f_box_GetActivityState_v2_6_Completed()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_4();
    l0 = self.box_EntityStatusListener_4;
    TraceConnection("DocumentContainer|FC5_main\\FC5_DominoEntities\\H3_InsideWolfsDen_PostBossFight.domino|@PostBossFightExit|911866989", "911866989", "PostBossFightExit", "box_GetActivityState_v2_6.Completed", "box_EntityStatusListener_4.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_GetActivityState_v2_6_Failed()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_5;
    TraceConnection("DocumentContainer|FC5_main\\FC5_DominoEntities\\H3_InsideWolfsDen_PostBossFight.domino|@PostBossFightExit|367806052", "367806052", "PostBossFightExit", "box_GetActivityState_v2_6.Failed", "box_MultipleOR_5.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 3);
end;

function export:f_box_GetActivityState_v2_6_Inactive()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_5;
    TraceConnection("DocumentContainer|FC5_main\\FC5_DominoEntities\\H3_InsideWolfsDen_PostBossFight.domino|@PostBossFightExit|1651119680", "1651119680", "PostBossFightExit", "box_GetActivityState_v2_6.Inactive", "box_MultipleOR_5.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_GetActivityState_v2_6_Unavailable()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_5;
    TraceConnection("DocumentContainer|FC5_main\\FC5_DominoEntities\\H3_InsideWolfsDen_PostBossFight.domino|@PostBossFightExit|1272278206", "1272278206", "PostBossFightExit", "box_GetActivityState_v2_6.Unavailable", "box_MultipleOR_5.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ProximityTrigger_v2_3_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_EntityStatusListener_4();
    l0 = self.box_ProximityTrigger_v2_3;
    l1 = self.box_EntityStatusListener_4;
    TraceConnection("DocumentContainer|FC5_main\\FC5_DominoEntities\\H3_InsideWolfsDen_PostBossFight.domino|@PostBossFightExit|850348844", "850348844", "PostBossFightExit", "box_ProximityTrigger_v2_3.Disabled", "box_EntityStatusListener_4.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_ProximityTrigger_v2_3_OnEmpty()
    local params, l0, l1;
    params = self:OnEnter_box_MissionBlockLayer_1();
    l0 = self.box_ProximityTrigger_v2_3;
    l1 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_DominoEntities\\H3_InsideWolfsDen_PostBossFight.domino|@PostBossFightExit|206963143", "206963143", "PostBossFightExit", "box_ProximityTrigger_v2_3.OnEmpty", "box_MissionBlockLayer_1.Activate", l0:GetLuaBox(), l1:GetLuaBox());
    -- Activate
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_10_Out()
    local params, l0, l1;
    params = self:OnEnter_box_GetActivityState_v2_6();
    l0 = self.box_MultipleOR_10;
    l1 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_DominoEntities\\H3_InsideWolfsDen_PostBossFight.domino|@PostBossFightExit|170105772", "170105772", "PostBossFightExit", "box_MultipleOR_10.Out", "box_GetActivityState_v2_6.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MissionBlockLayer_1_Activated()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_2();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_DominoEntities\\H3_InsideWolfsDen_PostBossFight.domino|@PostBossFightExit|513844940", "513844940", "PostBossFightExit", "box_MissionBlockLayer_1.Activated", "box_MissionBlockLayer_2.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GetActivityState_v2_9_Active()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_10;
    TraceConnection("DocumentContainer|FC5_main\\FC5_DominoEntities\\H3_InsideWolfsDen_PostBossFight.domino|@PostBossFightExit|1338230287", "1338230287", "PostBossFightExit", "box_GetActivityState_v2_9.Active", "box_MultipleOR_10.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_GetActivityState_v2_9_Canceled()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_10;
    TraceConnection("DocumentContainer|FC5_main\\FC5_DominoEntities\\H3_InsideWolfsDen_PostBossFight.domino|@PostBossFightExit|1553584877", "1553584877", "PostBossFightExit", "box_GetActivityState_v2_9.Canceled", "box_MultipleOR_10.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 4);
end;

function export:f_box_GetActivityState_v2_9_Completed()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_8();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_DominoEntities\\H3_InsideWolfsDen_PostBossFight.domino|@PostBossFightExit|267955484", "267955484", "PostBossFightExit", "box_GetActivityState_v2_9.Completed", "box_Simple_Node_8.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GetActivityState_v2_9_Failed()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_10;
    TraceConnection("DocumentContainer|FC5_main\\FC5_DominoEntities\\H3_InsideWolfsDen_PostBossFight.domino|@PostBossFightExit|836630480", "836630480", "PostBossFightExit", "box_GetActivityState_v2_9.Failed", "box_MultipleOR_10.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 3);
end;

function export:f_box_GetActivityState_v2_9_Inactive()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_10;
    TraceConnection("DocumentContainer|FC5_main\\FC5_DominoEntities\\H3_InsideWolfsDen_PostBossFight.domino|@PostBossFightExit|535518280", "535518280", "PostBossFightExit", "box_GetActivityState_v2_9.Inactive", "box_MultipleOR_10.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_GetActivityState_v2_9_Unavailable()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_10;
    TraceConnection("DocumentContainer|FC5_main\\FC5_DominoEntities\\H3_InsideWolfsDen_PostBossFight.domino|@PostBossFightExit|1011242812", "1011242812", "PostBossFightExit", "box_GetActivityState_v2_9.Unavailable", "box_MultipleOR_10.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_MultipleOR_5_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_7();
    l0 = self.box_MultipleOR_5;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_DominoEntities\\H3_InsideWolfsDen_PostBossFight.domino|@PostBossFightExit|461328290", "461328290", "PostBossFightExit", "box_MultipleOR_5.Out", "box_Simple_Node_7.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:OnEnter_box_EntityStatusListener_4()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2105794740384461850",
    };
    return params;
end;

function export:OnEnter_box_GetActivityState_v2_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetActivityState_v2_6");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_DominoEntities\\H3_InsideWolfsDen_PostBossFight.domino|@PostBossFightExit|269958589");
    l0:SetConnections({
        -- Active,
        [0] = self.f_box_GetActivityState_v2_6_Active,
        -- Canceled,
        [1] = self.f_box_GetActivityState_v2_6_Canceled,
        -- Completed,
        [2] = self.f_box_GetActivityState_v2_6_Completed,
        -- Failed,
        [3] = self.f_box_GetActivityState_v2_6_Failed,
        -- Inactive,
        [4] = self.f_box_GetActivityState_v2_6_Inactive,
        -- Unavailable,
        [6] = self.f_box_GetActivityState_v2_6_Unavailable,
    });
    params = {
        -- activityDescriptorID,
        [0] = "9015221228719349",
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_8()
    local params, l0;
    DrawTextToScreen("Comment: LT02_050_Complete", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'Simple Node')-- Comment: LT02_050_Complete");
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_8");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_DominoEntities\\H3_InsideWolfsDen_PostBossFight.domino|@PostBossFightExit|423990497");
    l0:SetConnections({
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_2");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_DominoEntities\\H3_InsideWolfsDen_PostBossFight.domino|@PostBossFightExit|639528352");
    l0:SetConnections({
    });
    params = {
        -- missionBlockId,
        [0] = "54181816736651894",
        -- missionLayerId,
        [1] = "27160218976512919",
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_7()
    local params, l0;
    DrawTextToScreen("Comment: LT02_040_DEBRIEF_NotComplete", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'Simple Node')-- Comment: LT02_040_DEBRIEF_NotComplete");
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_7");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_DominoEntities\\H3_InsideWolfsDen_PostBossFight.domino|@PostBossFightExit|641759914");
    l0:SetConnections({
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_3()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- colliderFilterId,
        [1] = "#ED455357",
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2105794740384461850",
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_1");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_DominoEntities\\H3_InsideWolfsDen_PostBossFight.domino|@PostBossFightExit|1221781722");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_MissionBlockLayer_1_Activated,
    });
    params = {
        -- missionBlockId,
        [0] = "54181816736651894",
        -- missionLayerId,
        [1] = "63189015991392886",
    };
    return params;
end;

function export:OnEnter_box_GetActivityState_v2_9()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetActivityState_v2_9");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_DominoEntities\\H3_InsideWolfsDen_PostBossFight.domino|@PostBossFightExit|1297425959");
    l0:SetConnections({
        -- Active,
        [0] = self.f_box_GetActivityState_v2_9_Active,
        -- Canceled,
        [1] = self.f_box_GetActivityState_v2_9_Canceled,
        -- Completed,
        [2] = self.f_box_GetActivityState_v2_9_Completed,
        -- Failed,
        [3] = self.f_box_GetActivityState_v2_9_Failed,
        -- Inactive,
        [4] = self.f_box_GetActivityState_v2_9_Inactive,
        -- Unavailable,
        [6] = self.f_box_GetActivityState_v2_9_Unavailable,
    });
    params = {
        -- activityDescriptorID,
        [0] = "9015221228739711",
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
