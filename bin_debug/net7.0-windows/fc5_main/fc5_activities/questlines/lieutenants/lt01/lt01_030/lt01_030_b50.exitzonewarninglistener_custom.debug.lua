LUAC�W  -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc5_main/fc5_activities/questlines/lieutenants/lt01/lt01_030/lt01_030_b50.domino
-- User graph: ExitZoneWarningListener_Custom
-- 
-- 
-- DO NOT EDIT MANUALLY THIS FILE OR YOUR CHANGES WILL BE LOST!
-- Please modify the original Domino script instead. You have been warned.

-- *** SCRIPT INPUT REFLECTION ***
--[[
<InputReflection>
    <DataIn Name="FailingZoneTrigger" Type="Nomad|entity{}" />
    <DataIn Name="WarningZoneTrigger" Type="Nomad|entity{}" />
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
        cboxRes:RegisterBox("Domino/System/GetPlayerGroup_v2.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/ProximityTrigger_v2.lua");
        cboxRes:RegisterBox("Domino/System/UI/DisplayCustomUIMsg_v4.lua");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT01/LT01_030/LT01_030_B50.ExitZoneWarningListener_Custom.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Enable",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "FailingZoneEntered",
                delayed = true,
            },
        },
        controlOutCount = 1,
        dataIn = {
            [0] = {
                name = "FailingZoneTrigger",
                type = "entity",
            },
            [1] = {
                name = "WarningZoneTrigger",
                type = "entity",
            },
        },
        dataInCount = 2,
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
    metadataTable[GetPathID("Domino/System/UI/DisplayCustomUIMsg_v4.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Display",
            },
            [1] = {
                name = "Hide",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "OnDisplay",
                delayed = false,
            },
            [1] = {
                name = "OnHide",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "MessageId",
                type = "oasis",
            },
            [1] = {
                name = "pawns",
                type = "group",
            },
        },
        dataInCount = 2,
        dataOut = {
        },
        dataOutCount = 0,
    };
end;

function export:Init(cbox)
    local l0;
    self._name = "ExitZoneWarningListener_Custom";
    self._elementPathId = "DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B50.domino|@ExitZoneWarningListener_Custom";
    self.FailingZoneEntered = DummyFunction;
    self.eCurrentPlayerWarn = nil;
    self.eCurrentPlayerFail = nil;
    self.gPlayers = nil;
    self.box_ProximityTrigger_v2_1 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_1");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B50.domino|@ExitZoneWarningListener_Custom|100372562");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_ProximityTrigger_v2_1_Disabled,
        -- Enabled,
        [1] = self.f_box_ProximityTrigger_v2_1_Enabled,
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v2_1_Enter,
        -- Leave,
        [3] = self.f_box_ProximityTrigger_v2_1_Leave,
        -- OnEmpty,
        [4] = self.f_box_ProximityTrigger_v2_1_OnEmpty,
        -- OnOccupied,
        [5] = self.f_box_ProximityTrigger_v2_1_OnOccupied,
        -- Use,
        [6] = self.f_box_ProximityTrigger_v2_1_Use,
    });
    self.box_MultipleOR_3 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_3;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_3");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B50.domino|@ExitZoneWarningListener_Custom|272040162");
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
        [0] = self.f_box_MultipleOR_3_Out,
    });
    self.box_ProximityTrigger_v2_2 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_2");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B50.domino|@ExitZoneWarningListener_Custom|725395108");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_ProximityTrigger_v2_2_Disabled,
        -- Enabled,
        [1] = self.f_box_ProximityTrigger_v2_2_Enabled,
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v2_2_Enter,
        -- Leave,
        [3] = self.f_box_ProximityTrigger_v2_2_Leave,
        -- OnEmpty,
        [4] = self.f_box_ProximityTrigger_v2_2_OnEmpty,
        -- OnOccupied,
        [5] = self.f_box_ProximityTrigger_v2_2_OnOccupied,
        -- Use,
        [6] = self.f_box_ProximityTrigger_v2_2_Use,
    });
    self.box_DisplayCustomUIMsg_v4_4 = cbox:CreateBox("Domino/System/UI/DisplayCustomUIMsg_v4.lua");
    l0 = self.box_DisplayCustomUIMsg_v4_4;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_DisplayCustomUIMsg_v4_4");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B50.domino|@ExitZoneWarningListener_Custom|1221706285");
    l0:SetConnections({
    });
end;

function export:Enable()
    local params, l0;
    params = self:OnEnter_box_GetPlayerGroup_v2_6();
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B50.domino|@ExitZoneWarningListener_Custom|695368940", "695368940", "ExitZoneWarningListener_Custom", "Enable", "box_GetPlayerGroup_v2_6.FriendlyPlayers", self, l0:GetLuaBox());
    -- FriendlyPlayers
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ProximityTrigger_v2_1_Enabled()
    self:OnExit_box_ProximityTrigger_v2_1_Enabled();
end;

function export:f_box_ProximityTrigger_v2_1_Enter()
    local params, l0, l1;
    self:OnExit_box_ProximityTrigger_v2_1_Enter();
    params = self:OnEnter_box_OutputOrder_v2_5();
    l0 = self.box_ProximityTrigger_v2_1;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B50.domino|@ExitZoneWarningListener_Custom|1044242143", "1044242143", "ExitZoneWarningListener_Custom", "box_ProximityTrigger_v2_1.Enter", "box_OutputOrder_v2_5.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ProximityTrigger_v2_1_Leave()
    self:OnExit_box_ProximityTrigger_v2_1_Leave();
end;

function export:f_box_ProximityTrigger_v2_1_OnEmpty()
    self:OnExit_box_ProximityTrigger_v2_1_OnEmpty();
end;

function export:f_box_ProximityTrigger_v2_1_OnOccupied()
    self:OnExit_box_ProximityTrigger_v2_1_OnOccupied();
end;

function export:f_box_ProximityTrigger_v2_1_Use()
    self:OnExit_box_ProximityTrigger_v2_1_Use();
end;

function export:f_box_MultipleOR_3_Out()
    local params, l0, l1;
    params = self:OnEnter_box_DisplayCustomUIMsg_v4_4();
    l0 = self.box_MultipleOR_3;
    l1 = self.box_DisplayCustomUIMsg_v4_4;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B50.domino|@ExitZoneWarningListener_Custom|1431482633", "1431482633", "ExitZoneWarningListener_Custom", "box_MultipleOR_3.Out", "box_DisplayCustomUIMsg_v4_4.Hide", l0:GetLuaBox(), l1:GetLuaBox());
    -- Hide
    l1:Exec(1, params);
end;

function export:f_box_ProximityTrigger_v2_2_Enabled()
    self:OnExit_box_ProximityTrigger_v2_2_Enabled();
end;

function export:f_box_ProximityTrigger_v2_2_Enter()
    local params, l0, l1;
    self:OnExit_box_ProximityTrigger_v2_2_Enter();
    params = self:OnEnter_box_DisplayCustomUIMsg_v4_4();
    l0 = self.box_ProximityTrigger_v2_2;
    l1 = self.box_DisplayCustomUIMsg_v4_4;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B50.domino|@ExitZoneWarningListener_Custom|1918204042", "1918204042", "ExitZoneWarningListener_Custom", "box_ProximityTrigger_v2_2.Enter", "box_DisplayCustomUIMsg_v4_4.Display", l0:GetLuaBox(), l1:GetLuaBox());
    -- Display
    l1:Exec(0, params);
end;

function export:f_box_ProximityTrigger_v2_2_Leave()
    local l0, l1;
    self:OnExit_box_ProximityTrigger_v2_2_Leave();
    l0 = self.box_ProximityTrigger_v2_2;
    l1 = self.box_MultipleOR_3;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B50.domino|@ExitZoneWarningListener_Custom|1658140961", "1658140961", "ExitZoneWarningListener_Custom", "box_ProximityTrigger_v2_2.Leave", "box_MultipleOR_3.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ProximityTrigger_v2_2_OnEmpty()
    self:OnExit_box_ProximityTrigger_v2_2_OnEmpty();
end;

function export:f_box_ProximityTrigger_v2_2_OnOccupied()
    self:OnExit_box_ProximityTrigger_v2_2_OnOccupied();
end;

function export:f_box_ProximityTrigger_v2_2_Use()
    self:OnExit_box_ProximityTrigger_v2_2_Use();
end;

function export:f_box_OutputOrder_v2_7_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v2_2();
    l0 = self.box_ProximityTrigger_v2_2;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B50.domino|@ExitZoneWarningListener_Custom|109631590", "109631590", "ExitZoneWarningListener_Custom", "box_OutputOrder_v2_7.Out", "box_ProximityTrigger_v2_2.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_7_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v2_1();
    l0 = self.box_ProximityTrigger_v2_1;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B50.domino|@ExitZoneWarningListener_Custom|96496156", "96496156", "ExitZoneWarningListener_Custom", "box_OutputOrder_v2_7.Out", "box_ProximityTrigger_v2_1.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_5_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_3;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B50.domino|@ExitZoneWarningListener_Custom|310016979", "310016979", "ExitZoneWarningListener_Custom", "box_OutputOrder_v2_5.Out", "box_MultipleOR_3.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_5_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B50.domino|@ExitZoneWarningListener_Custom|92999574", "92999574", "ExitZoneWarningListener_Custom", "box_OutputOrder_v2_5.Out", "FailingZoneEntered", clone:GetLuaBox(), self);
    self:FailingZoneEntered();
end;

function export:f_box_GetPlayerGroup_v2_6_Out()
    local params, l0;
    self:OnExit_box_GetPlayerGroup_v2_6_Out();
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_7();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B50.domino|@ExitZoneWarningListener_Custom|18248965", "18248965", "ExitZoneWarningListener_Custom", "box_GetPlayerGroup_v2_6.Out", "box_OutputOrder_v2_7.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:OnEnter_box_ProximityTrigger_v2_1()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- colliderFilterId,
        [1] = self.gPlayers,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = self.FailingZoneTrigger,
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_2()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- colliderFilterId,
        [1] = self.gPlayers,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = self.WarningZoneTrigger,
    };
    return params;
end;

function export:OnEnter_box_DisplayCustomUIMsg_v4_4()
    local params;
    params = {
        -- MessageId,
        [0] = {
            section = "HUD Popups",
            item = "HUDPOPUP_HUD_LEAVINGMISSIONZONE",
            id = "153327",
        },
        -- pawns,
        [1] = self.eCurrentPlayerWarn,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_7()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_7");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B50.domino|@ExitZoneWarningListener_Custom|1623934543");
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
                [0] = self.f_box_OutputOrder_v2_7_Out_0,
                [1] = self.f_box_OutputOrder_v2_7_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_5");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B50.domino|@ExitZoneWarningListener_Custom|1907999724");
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
                [0] = self.f_box_OutputOrder_v2_5_Out_0,
                [1] = self.f_box_OutputOrder_v2_5_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_GetPlayerGroup_v2_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPlayerGroup_v2_6");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B50.domino|@ExitZoneWarningListener_Custom|2096731305");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetPlayerGroup_v2_6_Out,
    });
    params = {
    };
    return params;
end;

function export:OnExit_box_ProximityTrigger_v2_1_Enabled()
    local l0;
    l0 = self.box_ProximityTrigger_v2_1;
    self.eCurrentPlayerFail = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ProximityTrigger_v2_1_Enter()
    local l0;
    l0 = self.box_ProximityTrigger_v2_1;
    self.eCurrentPlayerFail = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ProximityTrigger_v2_1_Leave()
    local l0;
    l0 = self.box_ProximityTrigger_v2_1;
    self.eCurrentPlayerFail = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ProximityTrigger_v2_1_OnEmpty()
    local l0;
    l0 = self.box_ProximityTrigger_v2_1;
    self.eCurrentPlayerFail = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ProximityTrigger_v2_1_OnOccupied()
    local l0;
    l0 = self.box_ProximityTrigger_v2_1;
    self.eCurrentPlayerFail = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ProximityTrigger_v2_1_Use()
    local l0;
    l0 = self.box_ProximityTrigger_v2_1;
    self.eCurrentPlayerFail = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ProximityTrigger_v2_2_Enabled()
    local l0;
    l0 = self.box_ProximityTrigger_v2_2;
    self.eCurrentPlayerWarn = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ProximityTrigger_v2_2_Enter()
    local l0;
    l0 = self.box_ProximityTrigger_v2_2;
    self.eCurrentPlayerWarn = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ProximityTrigger_v2_2_Leave()
    local l0;
    l0 = self.box_ProximityTrigger_v2_2;
    self.eCurrentPlayerWarn = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ProximityTrigger_v2_2_OnEmpty()
    local l0;
    l0 = self.box_ProximityTrigger_v2_2;
    self.eCurrentPlayerWarn = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ProximityTrigger_v2_2_OnOccupied()
    local l0;
    l0 = self.box_ProximityTrigger_v2_2;
    self.eCurrentPlayerWarn = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ProximityTrigger_v2_2_Use()
    local l0;
    l0 = self.box_ProximityTrigger_v2_2;
    self.eCurrentPlayerWarn = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetPlayerGroup_v2_6_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    self.gPlayers = l0:GetDataOutValue(0);
end;

-- Empty out anchor definitions
function export:FailingZoneEntered()
    
end;
_compilerVersion = 60;
<DominoMetadata IsStateless="0" IsSystem="0">
	<ControlsIn>
		<ControlIn Name="Enable" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
	</ControlsIn>
	<ControlsOut>
		<ControlOut Name="FailingZoneEntered" AnchorDynType="0" IsDelayed="1" />
	</ControlsOut>
	<DatasIn>
		<DataIn Name="FailingZoneTrigger" AnchorDynType="0" DataTypeID="entity" />
		<DataIn Name="WarningZoneTrigger" AnchorDynType="0" DataTypeID="entity" />
	</DatasIn>
	<DatasOut />
</DominoMetadata>
