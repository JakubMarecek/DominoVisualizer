LUACq�  -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/bowmore_main/bowmore_activities/specialists/mis_400/mis_400_b10.domino
-- User graph: Door_Interact_v2
-- 
-- 
-- DO NOT EDIT MANUALLY THIS FILE OR YOUR CHANGES WILL BE LOST!
-- Please modify the original Domino script instead. You have been warned.

-- *** SCRIPT INPUT REFLECTION ***
--[[
<InputReflection>
    <DataIn Name="eDoor" Type="Nomad|entity{}" />
    <DataIn Name="eMarker" Type="Nomad|entity{}" />
    <DataIn Name="eTrigger" Type="Nomad|entity{}" />
    <DataIn Name="oObjectives" Type="Nomad|oasis" />
    <DataIn Name="LightGreen" Type="Nomad|missionblocklayer" />
    <DataIn Name="LightRed" Type="Nomad|missionblocklayer" />
    <DataIn Name="eSwitch" Type="Nomad|entity{}" />
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
        cboxRes:RegisterBox("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua");
        cboxRes:RegisterBox("Domino/System/MissionBlockLayer.lua");
        cboxRes:RegisterBox("Domino/System/MultipleAND_v2.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/Player/GetLocalPlayer_v2.lua");
        cboxRes:RegisterBox("Domino/System/ProximityTrigger_v3.lua");
        cboxRes:RegisterBox("Domino/System/UniversalInteractionModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/UniversalInterationListener.lua");
    end;
end;

function export:ResetLocalGlobals()
    Globals.MIS_400_B10 = nil;
    Globals.MIS_400_B10 = {
        bB05Completed = false,
        bTwoOnThree = false,
    };
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/Bowmore_main/Bowmore_Activities/Specialists/MIS_400/MIS_400_B10.Door_Interact_v2.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "BypassInteraction",
            },
            [1] = {
                name = "In",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "Enabled",
                delayed = false,
            },
            [1] = {
                name = "Interacted",
                delayed = true,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "eDoor",
                type = "entity",
            },
            [1] = {
                name = "eMarker",
                type = "entity",
            },
            [2] = {
                name = "eSwitch",
                type = "entity",
            },
            [3] = {
                name = "eTrigger",
                type = "entity",
            },
            [4] = {
                name = "LightGreen",
                type = "missionblocklayer",
            },
            [5] = {
                name = "LightRed",
                type = "missionblocklayer",
            },
            [6] = {
                name = "oObjectives",
                type = "oasis",
            },
        },
        dataInCount = 7,
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
    metadataTable[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")] = {
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
                name = "LocalPlayer",
                type = "entity",
            },
        },
        dataOutCount = 1,
    };
    metadataTable[GetPathID("Domino/System/ProximityTrigger_v3.lua")] = {
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
                name = "OnAllInside",
                delayed = true,
            },
            [5] = {
                name = "OnEmpty",
                delayed = true,
            },
            [6] = {
                name = "OnOccupied",
                delayed = true,
            },
            [7] = {
                name = "Use",
                delayed = true,
            },
        },
        controlOutCount = 8,
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
                name = "requiresPawnsActive",
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
    metadataTable[GetPathID("Domino/System/UniversalInteractionModifier_v2.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Disable",
            },
            [1] = {
                name = "Enable",
            },
            [2] = {
                name = "ForceInteraction",
            },
        },
        controlInCount = 3,
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
                name = "Interacted",
                delayed = false,
            },
        },
        controlOutCount = 3,
        dataIn = {
            [0] = {
                name = "disableOnUse",
                type = "bool",
            },
            [1] = {
                name = "displayId",
                type = "oasis",
            },
            [2] = {
                name = "interactor",
                type = "entity",
            },
            [3] = {
                name = "state",
                type = "bool",
            },
            [4] = {
                name = "usableEntity",
                type = "entity",
            },
        },
        dataInCount = 5,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/UniversalInterationListener.lua")] = {
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
                name = "Interacted",
                delayed = true,
            },
        },
        controlOutCount = 3,
        dataIn = {
            [0] = {
                name = "autoDisable",
                type = "bool",
            },
            [1] = {
                name = "usableEntityId",
                type = "entity",
            },
        },
        dataInCount = 2,
        dataOut = {
            [0] = {
                name = "entityInteracted",
                type = "entity",
            },
        },
        dataOutCount = 1,
    };
end;

function export:Init(cbox)
    local l0;
    self._name = "Door_Interact_v2";
    self._elementPathId = "DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_400\\MIS_400_B10.domino|@Door_Interact_v2";
    self.Interacted = DummyFunction;
    self.Enabled = DummyFunction;
    self.bStopEverything = false;
    self.box_MultipleOR_8 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_8;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_8");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_400\\MIS_400_B10.domino|@Door_Interact_v2|393821643");
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
        [0] = self.f_box_MultipleOR_8_Out,
    });
    self.box_MultipleAND_v2_1 = cbox:CreateBox("Domino/System/MultipleAND_v2.lua");
    l0 = self.box_MultipleAND_v2_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleAND_v2_1");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_400\\MIS_400_B10.domino|@Door_Interact_v2|478319898");
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
        [0] = self.f_box_MultipleAND_v2_1_Out,
    });
    self.box_UniversalInteractionListener_6 = cbox:CreateBox("Domino/System/UniversalInterationListener.lua");
    l0 = self.box_UniversalInteractionListener_6;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UniversalInteractionListener_6");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_400\\MIS_400_B10.domino|@Door_Interact_v2|697029450");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UniversalInteractionListener_6_Disabled,
        -- Enabled,
        [1] = self.f_box_UniversalInteractionListener_6_Enabled,
        -- Interacted,
        [2] = self.f_box_UniversalInteractionListener_6_Interacted,
    });
    self.box_UniversalInteractionModifier_v2_11 = cbox:CreateBox("Domino/System/UniversalInteractionModifier_v2.lua");
    l0 = self.box_UniversalInteractionModifier_v2_11;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UniversalInteractionModifier_v2_11");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_400\\MIS_400_B10.domino|@Door_Interact_v2|1387525902");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UniversalInteractionModifier_v2_11_Disabled,
        -- Enabled,
        [1] = self.f_box_UniversalInteractionModifier_v2_11_Enabled,
    });
    self.box_ProximityTrigger_v3_5 = cbox:CreateBox("Domino/System/ProximityTrigger_v3.lua");
    l0 = self.box_ProximityTrigger_v3_5;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v3_5");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_400\\MIS_400_B10.domino|@Door_Interact_v2|1592126127");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_ProximityTrigger_v3_5_Disabled,
        -- Enabled,
        [1] = self.f_box_ProximityTrigger_v3_5_Enabled,
        -- Leave,
        [3] = self.f_box_ProximityTrigger_v3_5_Leave,
    });
    self.box_UniversalInteractionModifier_v2_4 = cbox:CreateBox("Domino/System/UniversalInteractionModifier_v2.lua");
    l0 = self.box_UniversalInteractionModifier_v2_4;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UniversalInteractionModifier_v2_4");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_400\\MIS_400_B10.domino|@Door_Interact_v2|1844276824");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_UniversalInteractionModifier_v2_4_Enabled,
        -- Interacted,
        [2] = self.f_box_UniversalInteractionModifier_v2_4_Interacted,
    });
    self.box_UniversalInteractionModifier_v2_12 = cbox:CreateBox("Domino/System/UniversalInteractionModifier_v2.lua");
    l0 = self.box_UniversalInteractionModifier_v2_12;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UniversalInteractionModifier_v2_12");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_400\\MIS_400_B10.domino|@Door_Interact_v2|2029088151");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UniversalInteractionModifier_v2_12_Disabled,
        -- Enabled,
        [1] = self.f_box_UniversalInteractionModifier_v2_12_Enabled,
    });
    self.box_UniversalInteractionModifier_v2_2 = cbox:CreateBox("Domino/System/UniversalInteractionModifier_v2.lua");
    l0 = self.box_UniversalInteractionModifier_v2_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UniversalInteractionModifier_v2_2");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_400\\MIS_400_B10.domino|@Door_Interact_v2|2034299035");
    l0:SetConnections({
        -- Interacted,
        [2] = self.f_box_UniversalInteractionModifier_v2_2_Interacted,
    });
end;

function export:BypassInteraction()
    local params, l0;
    params = self:OnEnter_box_MultipleAND_v2_1();
    l0 = self.box_MultipleAND_v2_1;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_400\\MIS_400_B10.domino|@Door_Interact_v2|275085998", "275085998", "Door_Interact_v2", "BypassInteraction", "box_MultipleAND_v2_1.Condition", self, l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 0);
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_UniversalInteractionListener_6();
    l0 = self.box_UniversalInteractionListener_6;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_400\\MIS_400_B10.domino|@Door_Interact_v2|2106046445", "2106046445", "Door_Interact_v2", "In", "box_UniversalInteractionListener_6.Enable", self, l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_MultipleOR_8_Out()
    local params, l0, l1;
    params = self:OnEnter_box_UniversalInteractionModifier_v2_4();
    l0 = self.box_MultipleOR_8;
    l1 = self.box_UniversalInteractionModifier_v2_4;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_400\\MIS_400_B10.domino|@Door_Interact_v2|1567613609", "1567613609", "Door_Interact_v2", "box_MultipleOR_8.Out", "box_UniversalInteractionModifier_v2_4.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_MultipleAND_v2_1_Out()
    local params, l0, l1;
    params = self:OnEnter_box_GetLocalPlayer_v2_9();
    l0 = self.box_MultipleAND_v2_1;
    l1 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_400\\MIS_400_B10.domino|@Door_Interact_v2|749090069", "749090069", "Door_Interact_v2", "box_MultipleAND_v2_1.Out", "box_GetLocalPlayer_v2_9.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ActivityObjectiveMarkerModifier_v3_7_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_3();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_400\\MIS_400_B10.domino|@Door_Interact_v2|1985056148", "1985056148", "Door_Interact_v2", "box_ActivityObjectiveMarkerModifier_v3_7.Disabled", "box_MissionBlockLayer_3.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UniversalInteractionListener_6_Disabled()
    local l0, l1;
    l0 = self.box_UniversalInteractionListener_6;
    l1 = self.box_MultipleOR_8;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_400\\MIS_400_B10.domino|@Door_Interact_v2|1294055889", "1294055889", "Door_Interact_v2", "box_UniversalInteractionListener_6.Disabled", "box_MultipleOR_8.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_UniversalInteractionListener_6_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_10();
    l0 = self.box_UniversalInteractionListener_6;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_400\\MIS_400_B10.domino|@Door_Interact_v2|1019345876", "1019345876", "Door_Interact_v2", "box_UniversalInteractionListener_6.Enabled", "box_OutputOrder_v2_10.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_UniversalInteractionListener_6_Interacted()
    local l0, l1;
    self:OnExit_box_UniversalInteractionListener_6_Interacted();
    l0 = self.box_UniversalInteractionListener_6;
    l1 = self.box_MultipleOR_8;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_400\\MIS_400_B10.domino|@Door_Interact_v2|1469901453", "1469901453", "Door_Interact_v2", "box_UniversalInteractionListener_6.Interacted", "box_MultipleOR_8.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_10_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_1();
    l0 = self.box_MultipleAND_v2_1;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_400\\MIS_400_B10.domino|@Door_Interact_v2|1599206619", "1599206619", "Door_Interact_v2", "box_OutputOrder_v2_10.Out", "box_MultipleAND_v2_1.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 1);
end;

function export:f_box_OutputOrder_v2_10_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v3_5();
    l0 = self.box_ProximityTrigger_v3_5;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_400\\MIS_400_B10.domino|@Door_Interact_v2|2038142019", "2038142019", "Door_Interact_v2", "box_OutputOrder_v2_10.Out", "box_ProximityTrigger_v3_5.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_23_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v3_5();
    l0 = self.box_ProximityTrigger_v3_5;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_400\\MIS_400_B10.domino|@Door_Interact_v2|1923012569", "1923012569", "Door_Interact_v2", "box_OutputOrder_v2_23.Out", "box_ProximityTrigger_v3_5.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_23_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_400\\MIS_400_B10.domino|@Door_Interact_v2|943134511", "943134511", "Door_Interact_v2", "box_OutputOrder_v2_23.Out", "Interacted", clone:GetLuaBox(), self);
    self:Interacted();
end;

function export:f_box_GetLocalPlayer_v2_9_Out()
    local params, l0;
    self:OnExit_box_GetLocalPlayer_v2_9_Out();
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UniversalInteractionModifier_v2_11();
    l0 = self.box_UniversalInteractionModifier_v2_11;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_400\\MIS_400_B10.domino|@Door_Interact_v2|1052830485", "1052830485", "Door_Interact_v2", "box_GetLocalPlayer_v2_9.Out", "box_UniversalInteractionModifier_v2_11.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_UniversalInteractionModifier_v2_11_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_UniversalInteractionModifier_v2_12();
    l0 = self.box_UniversalInteractionModifier_v2_11;
    l1 = self.box_UniversalInteractionModifier_v2_12;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_400\\MIS_400_B10.domino|@Door_Interact_v2|1498701270", "1498701270", "Door_Interact_v2", "box_UniversalInteractionModifier_v2_11.Disabled", "box_UniversalInteractionModifier_v2_12.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_UniversalInteractionModifier_v2_11_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_UniversalInteractionModifier_v2_12();
    l0 = self.box_UniversalInteractionModifier_v2_11;
    l1 = self.box_UniversalInteractionModifier_v2_12;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_400\\MIS_400_B10.domino|@Door_Interact_v2|645752566", "645752566", "Door_Interact_v2", "box_UniversalInteractionModifier_v2_11.Enabled", "box_UniversalInteractionModifier_v2_12.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_ProximityTrigger_v3_5_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_7();
    l0 = self.box_ProximityTrigger_v3_5;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_400\\MIS_400_B10.domino|@Door_Interact_v2|1225399312", "1225399312", "Door_Interact_v2", "box_ProximityTrigger_v3_5.Disabled", "box_ActivityObjectiveMarkerModifier_v3_7.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ProximityTrigger_v3_5_Enabled()
    local l0;
    l0 = self.box_ProximityTrigger_v3_5;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_400\\MIS_400_B10.domino|@Door_Interact_v2|1068622810", "1068622810", "Door_Interact_v2", "box_ProximityTrigger_v3_5.Enabled", "Enabled", l0:GetLuaBox(), self);
    self:Enabled();
end;

function export:f_box_ProximityTrigger_v3_5_Leave()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_7();
    l0 = self.box_ProximityTrigger_v3_5;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_400\\MIS_400_B10.domino|@Door_Interact_v2|1530035445", "1530035445", "Door_Interact_v2", "box_ProximityTrigger_v3_5.Leave", "box_ActivityObjectiveMarkerModifier_v3_7.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MissionBlockLayer_3_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_22();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_400\\MIS_400_B10.domino|@Door_Interact_v2|1781073997", "1781073997", "Door_Interact_v2", "box_MissionBlockLayer_3.Disabled", "box_MissionBlockLayer_22.Activate", clone:GetLuaBox(), l0:GetLuaBox());
    -- Activate
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UniversalInteractionModifier_v2_4_Enabled()
    local params, l0;
    params = self:OnEnter_box_UniversalInteractionModifier_v2_4();
    l0 = self.box_UniversalInteractionModifier_v2_4;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_400\\MIS_400_B10.domino|@Door_Interact_v2|946764664", "946764664", "Door_Interact_v2", "box_UniversalInteractionModifier_v2_4.Enabled", "box_UniversalInteractionModifier_v2_4.ForceInteraction", l0:GetLuaBox(), l0:GetLuaBox());
    -- ForceInteraction
    l0:Exec(2, params);
end;

function export:f_box_UniversalInteractionModifier_v2_4_Interacted()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_23();
    l0 = self.box_UniversalInteractionModifier_v2_4;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_400\\MIS_400_B10.domino|@Door_Interact_v2|1007625990", "1007625990", "Door_Interact_v2", "box_UniversalInteractionModifier_v2_4.Interacted", "box_OutputOrder_v2_23.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_UniversalInteractionModifier_v2_12_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_UniversalInteractionModifier_v2_2();
    l0 = self.box_UniversalInteractionModifier_v2_12;
    l1 = self.box_UniversalInteractionModifier_v2_2;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_400\\MIS_400_B10.domino|@Door_Interact_v2|505951262", "505951262", "Door_Interact_v2", "box_UniversalInteractionModifier_v2_12.Disabled", "box_UniversalInteractionModifier_v2_2.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_UniversalInteractionModifier_v2_12_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_UniversalInteractionModifier_v2_2();
    l0 = self.box_UniversalInteractionModifier_v2_12;
    l1 = self.box_UniversalInteractionModifier_v2_2;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_400\\MIS_400_B10.domino|@Door_Interact_v2|362501047", "362501047", "Door_Interact_v2", "box_UniversalInteractionModifier_v2_12.Enabled", "box_UniversalInteractionModifier_v2_2.ForceInteraction", l0:GetLuaBox(), l1:GetLuaBox());
    -- ForceInteraction
    l1:Exec(2, params);
end;

function export:f_box_UniversalInteractionModifier_v2_2_Interacted()
    local params, l0, l1;
    params = self:OnEnter_box_UniversalInteractionModifier_v2_11();
    l0 = self.box_UniversalInteractionModifier_v2_2;
    l1 = self.box_UniversalInteractionModifier_v2_11;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_400\\MIS_400_B10.domino|@Door_Interact_v2|217557203", "217557203", "Door_Interact_v2", "box_UniversalInteractionModifier_v2_2.Interacted", "box_UniversalInteractionModifier_v2_11.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:OnEnter_box_MultipleAND_v2_1()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_ActivityObjectiveMarkerModifier_v3_7()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityObjectiveMarkerModifier_v3_7");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_400\\MIS_400_B10.domino|@Door_Interact_v2|626545815");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_ActivityObjectiveMarkerModifier_v3_7_Disabled,
    });
    params = {
        -- Marker,
        [1] = self.eMarker,
        -- ObjectiveId,
        [2] = self.oObjectives,
    };
    return params;
end;

function export:OnEnter_box_UniversalInteractionListener_6()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- usableEntityId,
        [1] = self.eSwitch,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_10()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_10");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_400\\MIS_400_B10.domino|@Door_Interact_v2|828678691");
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

function export:OnEnter_box_MissionBlockLayer_22()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_22");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_400\\MIS_400_B10.domino|@Door_Interact_v2|1123023698");
    l0:SetConnections({
    });
    params = {
        -- missionBlockId,
        [0] = "27160312119561478",
        -- missionLayerId,
        [1] = self.LightGreen,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_23()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_23");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_400\\MIS_400_B10.domino|@Door_Interact_v2|1231230984");
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
                [0] = self.f_box_OutputOrder_v2_23_Out_0,
                [1] = self.f_box_OutputOrder_v2_23_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_GetLocalPlayer_v2_9()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetLocalPlayer_v2_9");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_400\\MIS_400_B10.domino|@Door_Interact_v2|1381142209");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetLocalPlayer_v2_9_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_UniversalInteractionModifier_v2_11()
    local params;
    params = {
        -- usableEntity,
        [4] = self.eDoor,
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v3_5()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- requiresPawnsActive,
        [2] = false,
        -- triggerId,
        [3] = self.eTrigger,
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_3");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_400\\MIS_400_B10.domino|@Door_Interact_v2|1725784299");
    l0:SetConnections({
        -- Disabled,
        [2] = self.f_box_MissionBlockLayer_3_Disabled,
    });
    params = {
        -- missionBlockId,
        [0] = "27160312119561478",
        -- missionLayerId,
        [1] = self.LightRed,
    };
    return params;
end;

function export:OnEnter_box_UniversalInteractionModifier_v2_4()
    local params, l0;
    l0 = self.box_UniversalInteractionListener_6;
    params = {
        -- interactor,
        [2] = l0:GetDataOutValue(0),
        -- usableEntity,
        [4] = self.eDoor,
    };
    return params;
end;

function export:OnEnter_box_UniversalInteractionModifier_v2_12()
    local params;
    params = {
        -- usableEntity,
        [4] = self.eSwitch,
    };
    return params;
end;

function export:OnEnter_box_UniversalInteractionModifier_v2_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    params = {
        -- interactor,
        [2] = l0:GetDataOutValue(0),
        -- usableEntity,
        [4] = self.eSwitch,
    };
    return params;
end;

function export:OnExit_box_UniversalInteractionListener_6_Interacted()
    local l0, l1;
    l0 = self.box_UniversalInteractionListener_6;
    l1 = self.box_UniversalInteractionModifier_v2_4;
    l1:GetLuaBox().interactor = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetLocalPlayer_v2_9_Out()
    local l0, l1;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    l1 = self.box_UniversalInteractionModifier_v2_2;
    l1:GetLuaBox().interactor = l0:GetDataOutValue(0);
end;

-- Empty out anchor definitions
function export:Interacted()
    
end;
function export:Enabled()
    
end;
_compilerVersion = 60;
<DominoMetadata IsStateless="0" IsSystem="0">
	<ControlsIn>
		<ControlIn Name="BypassInteraction" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
		<ControlIn Name="In" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
	</ControlsIn>
	<ControlsOut>
		<ControlOut Name="Enabled" AnchorDynType="0" IsDelayed="0" />
		<ControlOut Name="Interacted" AnchorDynType="0" IsDelayed="1" />
	</ControlsOut>
	<DatasIn>
		<DataIn Name="eDoor" AnchorDynType="0" DataTypeID="entity" />
		<DataIn Name="eMarker" AnchorDynType="0" DataTypeID="entity" />
		<DataIn Name="eSwitch" AnchorDynType="0" DataTypeID="entity" />
		<DataIn Name="eTrigger" AnchorDynType="0" DataTypeID="entity" />
		<DataIn Name="LightGreen" AnchorDynType="0" DataTypeID="missionblocklayer" />
		<DataIn Name="LightRed" AnchorDynType="0" DataTypeID="missionblocklayer" />
		<DataIn Name="oObjectives" AnchorDynType="0" DataTypeID="oasis" />
	</DatasIn>
	<DatasOut />
</DominoMetadata>
