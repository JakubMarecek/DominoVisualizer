LUAC� -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/bowmore_main/bowmore_activities/act2/mis_210/mis_210_intro.domino
-- User graph: LeavingPathTrackingAndWarning
-- 
-- 
-- DO NOT EDIT MANUALLY THIS FILE OR YOUR CHANGES WILL BE LOST!
-- Please modify the original Domino script instead. You have been warned.

-- *** SCRIPT INPUT REFLECTION ***
--[[
<InputReflection>
    <DataIn Name="CoopFailRequiresAllPlayer" Type="Core|bool" />
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
        cboxRes:RegisterBox("Domino/System/CompareEntity.lua");
        cboxRes:RegisterBox("Domino/System/Coop/CoopActivePlayers.lua");
        cboxRes:RegisterBox("Domino/System/Delay_v5.lua");
        cboxRes:RegisterBox("Domino/System/Gate_v3.lua");
        cboxRes:RegisterBox("Domino/System/GetPlayerGroup_v2.lua");
        cboxRes:RegisterBox("Domino/System/MultipleAND_v2.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/ProximityTrigger_v3.lua");
        cboxRes:RegisterBox("Domino/System/SimpleNode.lua");
        cboxRes:RegisterBox("Domino/System/TriggerState_v2.lua");
        cboxRes:RegisterBox("Domino/System/UI/DisplayCustomUIMsg_v5.lua");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/Bowmore_main/Bowmore_Activities/ACT2/MIS_210/MIS_210_INTRO.LeavingPathTrackingAndWarning.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Disable",
            },
            [1] = {
                name = "In",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "OutZoneFail",
                delayed = false,
            },
        },
        controlOutCount = 1,
        dataIn = {
            [0] = {
                name = "CoopFailRequiresAllPlayer",
                type = "bool",
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
    metadataTable[GetPathID("Domino/System/TriggerState_v2.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "SetAsUnusable",
            },
            [1] = {
                name = "SetAsUsable",
            },
            [2] = {
                name = "SetDisabled",
            },
            [3] = {
                name = "SetEnabled",
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
                name = "OnSetUnusable",
                delayed = false,
            },
            [3] = {
                name = "OnSetUsable",
                delayed = false,
            },
        },
        controlOutCount = 4,
        dataIn = {
            [0] = {
                name = "CheckAngle",
                type = "bool",
            },
            [1] = {
                name = "CheckLookAt",
                type = "bool",
            },
            [2] = {
                name = "Trigger",
                type = "entity",
            },
        },
        dataInCount = 3,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/UI/DisplayCustomUIMsg_v5.lua")] = {
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
                name = "MessageType",
                type = "int",
            },
            [2] = {
                name = "pawns",
                type = "group",
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
    self._name = "LeavingPathTrackingAndWarning";
    self._elementPathId = "DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_INTRO.domino|@LeavingPathTrackingAndWarning";
    self.OutZoneFail = DummyFunction;
    self.Player1 = nil;
    self.eCurrentPlayerFail = nil;
    self.Player2 = nil;
    self.gPlayers = nil;
    self.eCurrentPlayerWarn = nil;
    self.box_Delay_v5_23 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_23;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_23");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_INTRO.domino|@LeavingPathTrackingAndWarning|142137883");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_23_TimeElapsed,
    });
    self.box_MultipleOR_17 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_17;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_17");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_INTRO.domino|@LeavingPathTrackingAndWarning|359686399");
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
    self.box_MultipleOR_19 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_19;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_19");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_INTRO.domino|@LeavingPathTrackingAndWarning|367250465");
    l0:SetDynAnchorCount({
        controlIn = {
            [0] = 4,
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
    self.box_DisplayCustomUIMsg_v5_24 = cbox:CreateBox("Domino/System/UI/DisplayCustomUIMsg_v5.lua");
    l0 = self.box_DisplayCustomUIMsg_v5_24;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_DisplayCustomUIMsg_v5_24");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_INTRO.domino|@LeavingPathTrackingAndWarning|386321041");
    l0:SetConnections({
        -- OnHide,
        [1] = self.f_box_DisplayCustomUIMsg_v5_24_OnHide,
    });
    self.box_ProximityTrigger_v3_5 = cbox:CreateBox("Domino/System/ProximityTrigger_v3.lua");
    l0 = self.box_ProximityTrigger_v3_5;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v3_5");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_INTRO.domino|@LeavingPathTrackingAndWarning|388788892");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_ProximityTrigger_v3_5_Disabled,
        -- Enabled,
        [1] = self.f_box_ProximityTrigger_v3_5_Enabled,
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v3_5_Enter,
        -- Leave,
        [3] = self.f_box_ProximityTrigger_v3_5_Leave,
        -- OnAllInside,
        [4] = self.f_box_ProximityTrigger_v3_5_OnAllInside,
        -- OnEmpty,
        [5] = self.f_box_ProximityTrigger_v3_5_OnEmpty,
        -- OnOccupied,
        [6] = self.f_box_ProximityTrigger_v3_5_OnOccupied,
        -- Use,
        [7] = self.f_box_ProximityTrigger_v3_5_Use,
    });
    self.box_Delay_v5_7 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_7;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_7");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_INTRO.domino|@LeavingPathTrackingAndWarning|447561121");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_7_TimeElapsed,
    });
    self.box_DisplayCustomUIMsg_v5_6 = cbox:CreateBox("Domino/System/UI/DisplayCustomUIMsg_v5.lua");
    l0 = self.box_DisplayCustomUIMsg_v5_6;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_DisplayCustomUIMsg_v5_6");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_INTRO.domino|@LeavingPathTrackingAndWarning|1025027794");
    l0:SetConnections({
    });
    self.box_CoopActivePlayers_4 = cbox:CreateBox("Domino/System/Coop/CoopActivePlayers.lua");
    l0 = self.box_CoopActivePlayers_4;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CoopActivePlayers_4");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_INTRO.domino|@LeavingPathTrackingAndWarning|1348257350");
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
    self.box_Gate_v3_25 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_25;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_25");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_INTRO.domino|@LeavingPathTrackingAndWarning|1422537874");
    l0:SetConnections({
        -- Closed,
        [0] = self.f_box_Gate_v3_25_Closed,
        -- Out,
        [2] = self.f_box_Gate_v3_25_Out,
    });
    self.box_ProximityTrigger_v3_10 = cbox:CreateBox("Domino/System/ProximityTrigger_v3.lua");
    l0 = self.box_ProximityTrigger_v3_10;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v3_10");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_INTRO.domino|@LeavingPathTrackingAndWarning|1557450998");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_ProximityTrigger_v3_10_Disabled,
        -- Enabled,
        [1] = self.f_box_ProximityTrigger_v3_10_Enabled,
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v3_10_Enter,
        -- Leave,
        [3] = self.f_box_ProximityTrigger_v3_10_Leave,
        -- OnAllInside,
        [4] = self.f_box_ProximityTrigger_v3_10_OnAllInside,
        -- OnEmpty,
        [5] = self.f_box_ProximityTrigger_v3_10_OnEmpty,
        -- OnOccupied,
        [6] = self.f_box_ProximityTrigger_v3_10_OnOccupied,
        -- Use,
        [7] = self.f_box_ProximityTrigger_v3_10_Use,
    });
    self.box_MultipleOR_18 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_18;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_18");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_INTRO.domino|@LeavingPathTrackingAndWarning|1589660212");
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
        [0] = self.f_box_MultipleOR_18_Out,
    });
    self.box_MultipleAND_v2_1 = cbox:CreateBox("Domino/System/MultipleAND_v2.lua");
    l0 = self.box_MultipleAND_v2_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleAND_v2_1");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_INTRO.domino|@LeavingPathTrackingAndWarning|1627171320");
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
    self.box_DisplayCustomUIMsg_v5_27 = cbox:CreateBox("Domino/System/UI/DisplayCustomUIMsg_v5.lua");
    l0 = self.box_DisplayCustomUIMsg_v5_27;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_DisplayCustomUIMsg_v5_27");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_INTRO.domino|@LeavingPathTrackingAndWarning|1627408695");
    l0:SetConnections({
    });
    self.box_DisplayCustomUIMsg_v5_26 = cbox:CreateBox("Domino/System/UI/DisplayCustomUIMsg_v5.lua");
    l0 = self.box_DisplayCustomUIMsg_v5_26;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_DisplayCustomUIMsg_v5_26");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_INTRO.domino|@LeavingPathTrackingAndWarning|1983246232");
    l0:SetConnections({
    });
end;

function export:Disable()
    local params, l0;
    params = self:OnEnter_box_OutputOrder_v2_8();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_INTRO.domino|@LeavingPathTrackingAndWarning|973189945", "973189945", "LeavingPathTrackingAndWarning", "Disable", "box_OutputOrder_v2_8.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_GetPlayerGroup_v2_9();
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_INTRO.domino|@LeavingPathTrackingAndWarning|496946992", "496946992", "LeavingPathTrackingAndWarning", "In", "box_GetPlayerGroup_v2_9.FriendlyPlayers", self, l0:GetLuaBox());
    -- FriendlyPlayers
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_30_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_25();
    l0 = self.box_Gate_v3_25;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_INTRO.domino|@LeavingPathTrackingAndWarning|1879893082", "1879893082", "LeavingPathTrackingAndWarning", "box_Simple_Node_30.Out", "box_Gate_v3_25.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_28_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    l0 = self.box_CoopActivePlayers_4;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_INTRO.domino|@LeavingPathTrackingAndWarning|1469450895", "1469450895", "LeavingPathTrackingAndWarning", "box_Simple_Node_28.Out", "box_CoopActivePlayers_4.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, {
    });
    params = self:OnEnter_box_MultipleAND_v2_1();
    l0 = self.box_MultipleAND_v2_1;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_INTRO.domino|@LeavingPathTrackingAndWarning|1094032266", "1094032266", "LeavingPathTrackingAndWarning", "box_Simple_Node_28.Out", "box_MultipleAND_v2_1.Reset", clone:GetLuaBox(), l0:GetLuaBox());
    -- Reset
    l0:Exec(1, params);
end;

function export:f_box_TriggerState_v2_11_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/TriggerState_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v3_5();
    l0 = self.box_ProximityTrigger_v3_5;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_INTRO.domino|@LeavingPathTrackingAndWarning|1618985982", "1618985982", "LeavingPathTrackingAndWarning", "box_TriggerState_v2_11.Enabled", "box_ProximityTrigger_v3_5.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_Delay_v5_23_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_23;
    l1 = self.box_MultipleOR_17;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_INTRO.domino|@LeavingPathTrackingAndWarning|360237162", "360237162", "LeavingPathTrackingAndWarning", "box_Delay_v5_23.TimeElapsed", "box_MultipleOR_17.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_8_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v3_10();
    l0 = self.box_ProximityTrigger_v3_10;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_INTRO.domino|@LeavingPathTrackingAndWarning|1319925856", "1319925856", "LeavingPathTrackingAndWarning", "box_OutputOrder_v2_8.Out", "box_ProximityTrigger_v3_10.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_8_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v3_5();
    l0 = self.box_ProximityTrigger_v3_5;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_INTRO.domino|@LeavingPathTrackingAndWarning|1716903219", "1716903219", "LeavingPathTrackingAndWarning", "box_OutputOrder_v2_8.Out", "box_ProximityTrigger_v3_5.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_8_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_DisplayCustomUIMsg_v5_24();
    l0 = self.box_DisplayCustomUIMsg_v5_24;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_INTRO.domino|@LeavingPathTrackingAndWarning|911627460", "911627460", "LeavingPathTrackingAndWarning", "box_OutputOrder_v2_8.Out", "box_DisplayCustomUIMsg_v5_24.Hide", clone:GetLuaBox(), l0:GetLuaBox());
    -- Hide
    l0:Exec(1, params);
end;

function export:f_box_MultipleOR_17_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_17;
    l1 = self.box_CoopActivePlayers_4;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_INTRO.domino|@LeavingPathTrackingAndWarning|122113810", "122113810", "LeavingPathTrackingAndWarning", "box_MultipleOR_17.Out", "box_CoopActivePlayers_4.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, {
    });
end;

function export:f_box_MultipleOR_19_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_2();
    l0 = self.box_MultipleOR_19;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_INTRO.domino|@LeavingPathTrackingAndWarning|461617586", "461617586", "LeavingPathTrackingAndWarning", "box_MultipleOR_19.Out", "box_OutputOrder_v2_2.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_DisplayCustomUIMsg_v5_24_OnHide()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_30();
    l0 = self.box_DisplayCustomUIMsg_v5_24;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_INTRO.domino|@LeavingPathTrackingAndWarning|1181492289", "1181492289", "LeavingPathTrackingAndWarning", "box_DisplayCustomUIMsg_v5_24.OnHide", "box_Simple_Node_30.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ProximityTrigger_v3_5_Enabled()
    self:OnExit_box_ProximityTrigger_v3_5_Enabled();
end;

function export:f_box_ProximityTrigger_v3_5_Enter()
    local params, l0, l1;
    self:OnExit_box_ProximityTrigger_v3_5_Enter();
    params = self:OnEnter_box_Simple_Node_28();
    l0 = self.box_ProximityTrigger_v3_5;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_INTRO.domino|@LeavingPathTrackingAndWarning|1334975195", "1334975195", "LeavingPathTrackingAndWarning", "box_ProximityTrigger_v3_5.Enter", "box_Simple_Node_28.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ProximityTrigger_v3_5_Leave()
    local l0, l1;
    self:OnExit_box_ProximityTrigger_v3_5_Leave();
    l0 = self.box_ProximityTrigger_v3_5;
    l1 = self.box_MultipleOR_17;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_INTRO.domino|@LeavingPathTrackingAndWarning|718405029", "718405029", "LeavingPathTrackingAndWarning", "box_ProximityTrigger_v3_5.Leave", "box_MultipleOR_17.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ProximityTrigger_v3_5_OnEmpty()
    local params, l0, l1;
    self:OnExit_box_ProximityTrigger_v3_5_OnEmpty();
    params = self:OnEnter_box_Delay_v5_23();
    l0 = self.box_ProximityTrigger_v3_5;
    l1 = self.box_Delay_v5_23;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_INTRO.domino|@LeavingPathTrackingAndWarning|522159948", "522159948", "LeavingPathTrackingAndWarning", "box_ProximityTrigger_v3_5.OnEmpty", "box_Delay_v5_23.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_ProximityTrigger_v3_5_OnOccupied()
    local params, l0, l1;
    self:OnExit_box_ProximityTrigger_v3_5_OnOccupied();
    params = self:OnEnter_box_Delay_v5_23();
    l0 = self.box_ProximityTrigger_v3_5;
    l1 = self.box_Delay_v5_23;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_INTRO.domino|@LeavingPathTrackingAndWarning|517088539", "517088539", "LeavingPathTrackingAndWarning", "box_ProximityTrigger_v3_5.OnOccupied", "box_Delay_v5_23.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(3, params);
end;

function export:f_box_ProximityTrigger_v3_5_Use()
    self:OnExit_box_ProximityTrigger_v3_5_Use();
end;

function export:f_box_Delay_v5_7_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_7;
    l1 = self.box_MultipleOR_18;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_INTRO.domino|@LeavingPathTrackingAndWarning|857692036", "857692036", "LeavingPathTrackingAndWarning", "box_Delay_v5_7.TimeElapsed", "box_MultipleOR_18.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Compare_Entity_22_Equal()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_1();
    l0 = self.box_MultipleAND_v2_1;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_INTRO.domino|@LeavingPathTrackingAndWarning|163148420", "163148420", "LeavingPathTrackingAndWarning", "box_Compare_Entity_22.Equal", "box_MultipleAND_v2_1.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 0);
end;

function export:f_box_OutputOrder_v2_21_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_25();
    l0 = self.box_Gate_v3_25;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_INTRO.domino|@LeavingPathTrackingAndWarning|882152132", "882152132", "LeavingPathTrackingAndWarning", "box_OutputOrder_v2_21.Out", "box_Gate_v3_25.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_15_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_TriggerState_v2_12();
    l0 = Boxes[GetPathID("Domino/System/TriggerState_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_INTRO.domino|@LeavingPathTrackingAndWarning|996533336", "996533336", "LeavingPathTrackingAndWarning", "box_OutputOrder_v2_15.Out", "box_TriggerState_v2_12.SetEnabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetEnabled
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_15_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_TriggerState_v2_11();
    l0 = Boxes[GetPathID("Domino/System/TriggerState_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_INTRO.domino|@LeavingPathTrackingAndWarning|614711377", "614711377", "LeavingPathTrackingAndWarning", "box_OutputOrder_v2_15.Out", "box_TriggerState_v2_11.SetEnabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetEnabled
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_TriggerState_v2_12_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/TriggerState_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v3_10();
    l0 = self.box_ProximityTrigger_v3_10;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_INTRO.domino|@LeavingPathTrackingAndWarning|1667959432", "1667959432", "LeavingPathTrackingAndWarning", "box_TriggerState_v2_12.Enabled", "box_ProximityTrigger_v3_10.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_CoopActivePlayers_4_OnePlayer()
    local l0, l1;
    self:OnExit_box_CoopActivePlayers_4_OnePlayer();
    l0 = self.box_CoopActivePlayers_4;
    l1 = self.box_MultipleOR_19;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_INTRO.domino|@LeavingPathTrackingAndWarning|930999794", "930999794", "LeavingPathTrackingAndWarning", "box_CoopActivePlayers_4.OnePlayer", "box_MultipleOR_19.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_CoopActivePlayers_4_PlayerAdded()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_16();
    l0 = self.box_CoopActivePlayers_4;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_INTRO.domino|@LeavingPathTrackingAndWarning|35322961", "35322961", "LeavingPathTrackingAndWarning", "box_CoopActivePlayers_4.PlayerAdded", "box_Simple_Node_16.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_CoopActivePlayers_4_PlayerRemoved()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Entity_20();
    l0 = self.box_CoopActivePlayers_4;
    l1 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_INTRO.domino|@LeavingPathTrackingAndWarning|334144730", "334144730", "LeavingPathTrackingAndWarning", "box_CoopActivePlayers_4.PlayerRemoved", "box_Compare_Entity_20.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_CoopActivePlayers_4_TwoPlayers()
    local params, l0, l1;
    self:OnExit_box_CoopActivePlayers_4_TwoPlayers();
    params = self:OnEnter_box_Compare_Boolean_3();
    l0 = self.box_CoopActivePlayers_4;
    l1 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_INTRO.domino|@LeavingPathTrackingAndWarning|839555209", "839555209", "LeavingPathTrackingAndWarning", "box_CoopActivePlayers_4.TwoPlayers", "box_Compare_Boolean_3.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Gate_v3_25_Closed()
    local params, l0, l1;
    params = self:OnEnter_box_DisplayCustomUIMsg_v5_26();
    l0 = self.box_Gate_v3_25;
    l1 = self.box_DisplayCustomUIMsg_v5_26;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_INTRO.domino|@LeavingPathTrackingAndWarning|1198012518", "1198012518", "LeavingPathTrackingAndWarning", "box_Gate_v3_25.Closed", "box_DisplayCustomUIMsg_v5_26.Hide", l0:GetLuaBox(), l1:GetLuaBox());
    -- Hide
    l1:Exec(1, params);
end;

function export:f_box_Gate_v3_25_Out()
    local params, l0, l1;
    params = self:OnEnter_box_DisplayCustomUIMsg_v5_26();
    l0 = self.box_Gate_v3_25;
    l1 = self.box_DisplayCustomUIMsg_v5_26;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_INTRO.domino|@LeavingPathTrackingAndWarning|1810369647", "1810369647", "LeavingPathTrackingAndWarning", "box_Gate_v3_25.Out", "box_DisplayCustomUIMsg_v5_26.Display", l0:GetLuaBox(), l1:GetLuaBox());
    -- Display
    l1:Exec(0, params);
end;

function export:f_box_GetPlayerGroup_v2_9_Out()
    local params, l0;
    self:OnExit_box_GetPlayerGroup_v2_9_Out();
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_15();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_INTRO.domino|@LeavingPathTrackingAndWarning|31763418", "31763418", "LeavingPathTrackingAndWarning", "box_GetPlayerGroup_v2_9.Out", "box_OutputOrder_v2_15.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ProximityTrigger_v3_10_Enabled()
    self:OnExit_box_ProximityTrigger_v3_10_Enabled();
end;

function export:f_box_ProximityTrigger_v3_10_Enter()
    local params, l0, l1;
    self:OnExit_box_ProximityTrigger_v3_10_Enter();
    params = self:OnEnter_box_DisplayCustomUIMsg_v5_6();
    l0 = self.box_ProximityTrigger_v3_10;
    l1 = self.box_DisplayCustomUIMsg_v5_6;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_INTRO.domino|@LeavingPathTrackingAndWarning|277398041", "277398041", "LeavingPathTrackingAndWarning", "box_ProximityTrigger_v3_10.Enter", "box_DisplayCustomUIMsg_v5_6.Hide", l0:GetLuaBox(), l1:GetLuaBox());
    -- Hide
    l1:Exec(1, params);
end;

function export:f_box_ProximityTrigger_v3_10_Leave()
    local l0, l1;
    self:OnExit_box_ProximityTrigger_v3_10_Leave();
    l0 = self.box_ProximityTrigger_v3_10;
    l1 = self.box_MultipleOR_18;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_INTRO.domino|@LeavingPathTrackingAndWarning|1705440919", "1705440919", "LeavingPathTrackingAndWarning", "box_ProximityTrigger_v3_10.Leave", "box_MultipleOR_18.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ProximityTrigger_v3_10_OnEmpty()
    local params, l0, l1;
    self:OnExit_box_ProximityTrigger_v3_10_OnEmpty();
    params = self:OnEnter_box_Delay_v5_7();
    l0 = self.box_ProximityTrigger_v3_10;
    l1 = self.box_Delay_v5_7;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_INTRO.domino|@LeavingPathTrackingAndWarning|1846317712", "1846317712", "LeavingPathTrackingAndWarning", "box_ProximityTrigger_v3_10.OnEmpty", "box_Delay_v5_7.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_ProximityTrigger_v3_10_OnOccupied()
    local params, l0, l1;
    self:OnExit_box_ProximityTrigger_v3_10_OnOccupied();
    params = self:OnEnter_box_Delay_v5_7();
    l0 = self.box_ProximityTrigger_v3_10;
    l1 = self.box_Delay_v5_7;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_INTRO.domino|@LeavingPathTrackingAndWarning|1780872891", "1780872891", "LeavingPathTrackingAndWarning", "box_ProximityTrigger_v3_10.OnOccupied", "box_Delay_v5_7.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(3, params);
end;

function export:f_box_ProximityTrigger_v3_10_Use()
    self:OnExit_box_ProximityTrigger_v3_10_Use();
end;

function export:f_box_Compare_Entity_13_Equal()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_1();
    l0 = self.box_MultipleAND_v2_1;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_INTRO.domino|@LeavingPathTrackingAndWarning|394529857", "394529857", "LeavingPathTrackingAndWarning", "box_Compare_Entity_13.Equal", "box_MultipleAND_v2_1.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 1);
end;

function export:f_box_MultipleOR_18_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_21();
    l0 = self.box_MultipleOR_18;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_INTRO.domino|@LeavingPathTrackingAndWarning|1793318741", "1793318741", "LeavingPathTrackingAndWarning", "box_MultipleOR_18.Out", "box_OutputOrder_v2_21.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleAND_v2_1_Out()
    local l0, l1;
    l0 = self.box_MultipleAND_v2_1;
    l1 = self.box_MultipleOR_19;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_INTRO.domino|@LeavingPathTrackingAndWarning|672057250", "672057250", "LeavingPathTrackingAndWarning", "box_MultipleAND_v2_1.Out", "box_MultipleOR_19.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 3);
end;

function export:f_box_OutputOrder_v2_2_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_30();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_INTRO.domino|@LeavingPathTrackingAndWarning|1292576004", "1292576004", "LeavingPathTrackingAndWarning", "box_OutputOrder_v2_2.Out", "box_Simple_Node_30.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_2_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_DisplayCustomUIMsg_v5_27();
    l0 = self.box_DisplayCustomUIMsg_v5_27;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_INTRO.domino|@LeavingPathTrackingAndWarning|419066663", "419066663", "LeavingPathTrackingAndWarning", "box_OutputOrder_v2_2.Out", "box_DisplayCustomUIMsg_v5_27.Hide", clone:GetLuaBox(), l0:GetLuaBox());
    -- Hide
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_2_Out_2()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_INTRO.domino|@LeavingPathTrackingAndWarning|10080240", "10080240", "LeavingPathTrackingAndWarning", "box_OutputOrder_v2_2.Out", "OutZoneFail", clone:GetLuaBox(), self);
    self:OutZoneFail();
end;

function export:f_box_Compare_Boolean_3_A_is_False()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_19;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_INTRO.domino|@LeavingPathTrackingAndWarning|30364817", "30364817", "LeavingPathTrackingAndWarning", "box_Compare_Boolean_3.A_is_False", "box_MultipleOR_19.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_Compare_Boolean_3_A_is_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_14();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_INTRO.domino|@LeavingPathTrackingAndWarning|1125917535", "1125917535", "LeavingPathTrackingAndWarning", "box_Compare_Boolean_3.A_is_True", "box_OutputOrder_v2_14.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_14_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Entity_22();
    l0 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_INTRO.domino|@LeavingPathTrackingAndWarning|2051877362", "2051877362", "LeavingPathTrackingAndWarning", "box_OutputOrder_v2_14.Out", "box_Compare_Entity_22.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_14_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Entity_13();
    l0 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_INTRO.domino|@LeavingPathTrackingAndWarning|480953834", "480953834", "LeavingPathTrackingAndWarning", "box_OutputOrder_v2_14.Out", "box_Compare_Entity_13.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Entity_20_Equal()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_28();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_INTRO.domino|@LeavingPathTrackingAndWarning|726810895", "726810895", "LeavingPathTrackingAndWarning", "box_Compare_Entity_20.Equal", "box_Simple_Node_28.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Entity_20_NotEqual()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_19;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_INTRO.domino|@LeavingPathTrackingAndWarning|1621594093", "1621594093", "LeavingPathTrackingAndWarning", "box_Compare_Entity_20.NotEqual", "box_MultipleOR_19.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:OnEnter_box_Simple_Node_30()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_30");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_INTRO.domino|@LeavingPathTrackingAndWarning|@Close");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_30_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_28()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_28");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_INTRO.domino|@LeavingPathTrackingAndWarning|@Reset");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_28_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_TriggerState_v2_11()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/TriggerState_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_TriggerState_v2_11");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_INTRO.domino|@LeavingPathTrackingAndWarning|91606053");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_TriggerState_v2_11_Enabled,
    });
    params = {
        -- CheckAngle,
        [0] = false,
        -- CheckLookAt,
        [1] = false,
        -- Trigger,
        [2] = "2109664986079957747",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_23()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_8()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_8");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_INTRO.domino|@LeavingPathTrackingAndWarning|214095614");
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
                [0] = self.f_box_OutputOrder_v2_8_Out_0,
                [1] = self.f_box_OutputOrder_v2_8_Out_1,
                [2] = self.f_box_OutputOrder_v2_8_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_DisplayCustomUIMsg_v5_24()
    local params;
    params = {
        -- MessageId,
        [0] = {
            section = "Objectives",
            item = "MIS_210_INTRO_WARNING",
            id = "1024617",
        },
        -- MessageType,
        [1] = 1,
        -- pawns,
        [2] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v3_5()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- colliderFilterId,
        [1] = self.gPlayers,
        -- requiresPawnsActive,
        [2] = false,
        -- triggerId,
        [3] = "2109664986079957747",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_7()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_Compare_Entity_22()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Entity_22");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_INTRO.domino|@LeavingPathTrackingAndWarning|468738077");
    l0:SetConnections({
        -- Equal,
        [0] = self.f_box_Compare_Entity_22_Equal,
    });
    params = {
        -- Entity1,
        [0] = self.Player1,
        -- Entity2,
        [1] = self.eCurrentPlayerFail,
    };
    return params;
end;

function export:OnEnter_box_DisplayCustomUIMsg_v5_6()
    local params;
    params = {
        -- MessageId,
        [0] = {
            section = "Objectives",
            item = "MIS_210_INTRO_WARNING",
            id = "1024617",
        },
        -- MessageType,
        [1] = 1,
        -- pawns,
        [2] = self.eCurrentPlayerWarn,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_21()
    local params, l0;
    DrawTextToScreen("Comment: PLAYER OUTSIDE WARNING ZONE", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'OutputOrder_v2')-- Comment: PLAYER OUTSIDE WARNING ZONE");
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_21");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_INTRO.domino|@LeavingPathTrackingAndWarning|1052334565");
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
                [0] = self.f_box_OutputOrder_v2_21_Out_0,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_16()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_16");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_INTRO.domino|@LeavingPathTrackingAndWarning|1087798879");
    l0:SetConnections({
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_15()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_15");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_INTRO.domino|@LeavingPathTrackingAndWarning|1136388144");
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
                [0] = self.f_box_OutputOrder_v2_15_Out_0,
                [1] = self.f_box_OutputOrder_v2_15_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_TriggerState_v2_12()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/TriggerState_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_TriggerState_v2_12");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_INTRO.domino|@LeavingPathTrackingAndWarning|1290686193");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_TriggerState_v2_12_Enabled,
    });
    params = {
        -- CheckAngle,
        [0] = false,
        -- CheckLookAt,
        [1] = false,
        -- Trigger,
        [2] = "2109664929347801842",
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_25()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_GetPlayerGroup_v2_9()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPlayerGroup_v2_9");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_INTRO.domino|@LeavingPathTrackingAndWarning|1447981238");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetPlayerGroup_v2_9_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v3_10()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- colliderFilterId,
        [1] = self.gPlayers,
        -- requiresPawnsActive,
        [2] = false,
        -- triggerId,
        [3] = "2109664929347801842",
    };
    return params;
end;

function export:OnEnter_box_Compare_Entity_13()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Entity_13");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_INTRO.domino|@LeavingPathTrackingAndWarning|1568178313");
    l0:SetConnections({
        -- Equal,
        [0] = self.f_box_Compare_Entity_13_Equal,
    });
    params = {
        -- Entity1,
        [0] = self.Player2,
        -- Entity2,
        [1] = self.eCurrentPlayerFail,
    };
    return params;
end;

function export:OnEnter_box_MultipleAND_v2_1()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_DisplayCustomUIMsg_v5_27()
    local params;
    params = {
        -- MessageId,
        [0] = {
            section = "Objectives",
            item = "MIS_210_INTRO_WARNING",
            id = "1024617",
        },
        -- MessageType,
        [1] = 1,
        -- pawns,
        [2] = self.eCurrentPlayerFail,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_2");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_INTRO.domino|@LeavingPathTrackingAndWarning|1785287776");
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
                [0] = self.f_box_OutputOrder_v2_2_Out_0,
                [1] = self.f_box_OutputOrder_v2_2_Out_1,
                [2] = self.f_box_OutputOrder_v2_2_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_3");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_INTRO.domino|@LeavingPathTrackingAndWarning|1801785263");
    l0:SetConnections({
        -- A_is_False,
        [1] = self.f_box_Compare_Boolean_3_A_is_False,
        -- A_is_True,
        [2] = self.f_box_Compare_Boolean_3_A_is_True,
    });
    params = {
        -- A,
        [0] = self.CoopFailRequiresAllPlayer,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_14()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_14");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_INTRO.domino|@LeavingPathTrackingAndWarning|1814323497");
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

function export:OnEnter_box_DisplayCustomUIMsg_v5_26()
    local params;
    params = {
        -- MessageId,
        [0] = {
            section = "Objectives",
            item = "MIS_210_INTRO_WARNING",
            id = "1024617",
        },
        -- MessageType,
        [1] = 1,
        -- pawns,
        [2] = self.eCurrentPlayerWarn,
    };
    return params;
end;

function export:OnEnter_box_Compare_Entity_20()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Entity_20");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_INTRO.domino|@LeavingPathTrackingAndWarning|1991339281");
    l0:SetConnections({
        -- Equal,
        [0] = self.f_box_Compare_Entity_20_Equal,
        -- NotEqual,
        [1] = self.f_box_Compare_Entity_20_NotEqual,
    });
    l0 = self.box_CoopActivePlayers_4;
    params = {
        -- Entity1,
        [0] = l0:GetDataOutValue(2),
        -- Entity2,
        [1] = self.eCurrentPlayerFail,
    };
    return params;
end;

function export:OnExit_box_ProximityTrigger_v3_5_Enabled()
    local l0;
    l0 = self.box_ProximityTrigger_v3_5;
    self.eCurrentPlayerFail = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ProximityTrigger_v3_5_Enter()
    local l0;
    l0 = self.box_ProximityTrigger_v3_5;
    self.eCurrentPlayerFail = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ProximityTrigger_v3_5_Leave()
    local l0;
    l0 = self.box_ProximityTrigger_v3_5;
    self.eCurrentPlayerFail = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ProximityTrigger_v3_5_OnEmpty()
    local l0;
    l0 = self.box_ProximityTrigger_v3_5;
    self.eCurrentPlayerFail = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ProximityTrigger_v3_5_OnOccupied()
    local l0;
    l0 = self.box_ProximityTrigger_v3_5;
    self.eCurrentPlayerFail = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ProximityTrigger_v3_5_Use()
    local l0;
    l0 = self.box_ProximityTrigger_v3_5;
    self.eCurrentPlayerFail = l0:GetDataOutValue(0);
end;

function export:OnExit_box_CoopActivePlayers_4_OnePlayer()
    local l0;
    l0 = self.box_CoopActivePlayers_4;
    self.Player1 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_CoopActivePlayers_4_TwoPlayers()
    local l0;
    l0 = self.box_CoopActivePlayers_4;
    self.Player1 = l0:GetDataOutValue(0);
    self.Player2 = l0:GetDataOutValue(1);
end;

function export:OnExit_box_GetPlayerGroup_v2_9_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    self.gPlayers = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ProximityTrigger_v3_10_Enabled()
    local l0;
    l0 = self.box_ProximityTrigger_v3_10;
    self.eCurrentPlayerWarn = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ProximityTrigger_v3_10_Enter()
    local l0;
    l0 = self.box_ProximityTrigger_v3_10;
    self.eCurrentPlayerWarn = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ProximityTrigger_v3_10_Leave()
    local l0;
    l0 = self.box_ProximityTrigger_v3_10;
    self.eCurrentPlayerWarn = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ProximityTrigger_v3_10_OnEmpty()
    local l0;
    l0 = self.box_ProximityTrigger_v3_10;
    self.eCurrentPlayerWarn = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ProximityTrigger_v3_10_OnOccupied()
    local l0;
    l0 = self.box_ProximityTrigger_v3_10;
    self.eCurrentPlayerWarn = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ProximityTrigger_v3_10_Use()
    local l0;
    l0 = self.box_ProximityTrigger_v3_10;
    self.eCurrentPlayerWarn = l0:GetDataOutValue(0);
end;

-- Empty out anchor definitions
function export:OutZoneFail()
    
end;
_compilerVersion = 60;
<DominoMetadata IsStateless="0" IsSystem="0">
	<ControlsIn>
		<ControlIn Name="Disable" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
		<ControlIn Name="In" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
	</ControlsIn>
	<ControlsOut>
		<ControlOut Name="OutZoneFail" AnchorDynType="0" IsDelayed="0" />
	</ControlsOut>
	<DatasIn>
		<DataIn Name="CoopFailRequiresAllPlayer" AnchorDynType="0" DataTypeID="bool" />
	</DatasIn>
	<DatasOut />
</DominoMetadata>
