LUAC��  -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/bowmore_main/bowmore_activities/specialists/mis_440/mis_440_b10.domino
-- User graph: _MIS440_B10_DialogueManager
-- 
-- 
-- DO NOT EDIT MANUALLY THIS FILE OR YOUR CHANGES WILL BE LOST!
-- Please modify the original Domino script instead. You have been warned.

-- *** SCRIPT INPUT REFLECTION ***
--[[
<InputReflection>
    <DataIn Name="eNickRye" Type="Nomad|entity{}" />
    <DataIn Name="eTarget" Type="Nomad|entity{}" />
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
        cboxRes:RegisterBox("Domino/System/Delay_v5.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/PlayDialog_v6.lua");
        cboxRes:RegisterBox("Domino/System/ProximityTrigger_v3.lua");
        
        -- Load resources
        cboxRes:LoadResource([[1443149189.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1016766135.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1835813663.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1837708824.bnk]], "CSoundResource");
        cboxRes:LoadResource([[4185263721.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3458264522.bnk]], "CSoundResource");
        cboxRes:LoadResource([[417684726.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2583254202.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3894443515.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3208696704.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1383253068.bnk]], "CSoundResource");
        cboxRes:LoadResource([[503706455.bnk]], "CSoundResource");
        cboxRes:LoadResource([[805031433.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1628365389.bnk]], "CSoundResource");
        cboxRes:LoadResource([[801930410.bnk]], "CSoundResource");
        cboxRes:LoadResource([[4256519152.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3345365287.bnk]], "CSoundResource");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/Bowmore_main/Bowmore_Activities/Specialists/MIS_440/MIS_440_B10._MIS440_B10_DialogueManager.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Enable",
            },
            [1] = {
                name = "Start_007",
            },
            [2] = {
                name = "Start_008",
            },
            [3] = {
                name = "Start_013",
            },
            [4] = {
                name = "Start_016",
            },
        },
        controlInCount = 5,
        controlOut = {
        },
        controlOutCount = 0,
        dataIn = {
            [0] = {
                name = "eNickRye",
                type = "entity",
            },
            [1] = {
                name = "eTarget",
                type = "entity",
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
    metadataTable[GetPathID("Domino/System/PlayDialog_v6.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "CancelQueued",
            },
            [1] = {
                name = "PlayDialog",
            },
            [2] = {
                name = "Stop",
            },
        },
        controlInCount = 3,
        controlOut = {
            [0] = {
                name = "Finished",
                delayed = true,
            },
            [1] = {
                name = "FinishedInterrupted",
                delayed = true,
            },
            [2] = {
                name = "QueueCancelled",
                delayed = false,
            },
            [3] = {
                name = "Queued",
                delayed = true,
            },
            [4] = {
                name = "Started",
                delayed = true,
            },
            [5] = {
                name = "StartedPriorityFailed",
                delayed = true,
            },
            [6] = {
                name = "Stopped",
                delayed = false,
            },
        },
        controlOutCount = 7,
        dataIn = {
            [0] = {
                name = "Group",
                type = "group",
            },
            [1] = {
                name = "RelevancyTime",
                type = "float",
            },
            [2] = {
                name = "ReplayIfInterrupted",
                type = "bool",
            },
            [3] = {
                name = "SoundId",
                type = "Sound",
            },
        },
        dataInCount = 4,
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
end;

function export:Init(cbox)
    local l0;
    self._name = "_MIS440_B10_DialogueManager";
    self._elementPathId = "DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@_MIS440_B10_DialogueManager";
    self.box_PlayDialog_v6_55 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_55;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_55");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@_MIS440_B10_DialogueManager|37707312");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_55_Finished,
    });
    self.box_PlayDialog_v6_11 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_11;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_11");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@_MIS440_B10_DialogueManager|75195369");
    l0:SetConnections({
    });
    self.box_PlayDialog_v6_6 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_6;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_6");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@_MIS440_B10_DialogueManager|141062256");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_6_Finished,
    });
    self.box_PlayDialog_v6_24 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_24;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_24");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@_MIS440_B10_DialogueManager|202949641");
    l0:SetConnections({
    });
    self.box_PlayDialog_v6_38 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_38;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_38");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@_MIS440_B10_DialogueManager|258295836");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_38_Finished,
    });
    self.box_PlayDialog_v6_36 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_36;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_36");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@_MIS440_B10_DialogueManager|327926204");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_36_Finished,
    });
    self.box_Delay_v5_1 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_1");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@_MIS440_B10_DialogueManager|426386413");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_1_TimeElapsed,
    });
    self.box_ProximityTrigger_v3_34 = cbox:CreateBox("Domino/System/ProximityTrigger_v3.lua");
    l0 = self.box_ProximityTrigger_v3_34;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v3_34");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@_MIS440_B10_DialogueManager|606278587");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_ProximityTrigger_v3_34_Disabled,
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v3_34_Enter,
    });
    self.box_ProximityTrigger_v3_39 = cbox:CreateBox("Domino/System/ProximityTrigger_v3.lua");
    l0 = self.box_ProximityTrigger_v3_39;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v3_39");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@_MIS440_B10_DialogueManager|652411285");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_ProximityTrigger_v3_39_Disabled,
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v3_39_Enter,
    });
    self.box_PlayDialog_v6_53 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_53;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_53");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@_MIS440_B10_DialogueManager|682946937");
    l0:SetConnections({
    });
    self.box_PlayDialog_v6_2 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_2");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@_MIS440_B10_DialogueManager|747276742");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_2_Finished,
    });
    self.box_PlayDialog_v6_52 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_52;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_52");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@_MIS440_B10_DialogueManager|840255801");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_52_Finished,
    });
    self.box_PlayDialog_v6_25 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_25;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_25");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@_MIS440_B10_DialogueManager|924506259");
    l0:SetConnections({
    });
    self.box_Delay_v5_49 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_49;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_49");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@_MIS440_B10_DialogueManager|974151980");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_49_TimeElapsed,
    });
    self.box_PlayDialog_v6_58 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_58;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_58");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@_MIS440_B10_DialogueManager|1072218310");
    l0:SetConnections({
    });
    self.box_PlayDialog_v6_51 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_51;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_51");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@_MIS440_B10_DialogueManager|1112155398");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_51_Finished,
    });
    self.box_Delay_v5_29 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_29;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_29");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@_MIS440_B10_DialogueManager|1334812350");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_29_TimeElapsed,
    });
    self.box_PlayDialog_v6_54 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_54;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_54");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@_MIS440_B10_DialogueManager|1427333324");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_54_Finished,
    });
    self.box_PlayDialog_v6_7 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_7;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_7");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@_MIS440_B10_DialogueManager|1471368499");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_7_Finished,
    });
    self.box_PlayDialog_v6_5 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_5;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_5");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@_MIS440_B10_DialogueManager|1565054168");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_5_Finished,
    });
    self.box_PlayDialog_v6_31 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_31;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_31");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@_MIS440_B10_DialogueManager|1597060345");
    l0:SetConnections({
    });
    self.box_ProximityTrigger_v3_26 = cbox:CreateBox("Domino/System/ProximityTrigger_v3.lua");
    l0 = self.box_ProximityTrigger_v3_26;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v3_26");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@_MIS440_B10_DialogueManager|1641024393");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_ProximityTrigger_v3_26_Disabled,
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v3_26_Enter,
    });
    self.box_ProximityTrigger_v3_16 = cbox:CreateBox("Domino/System/ProximityTrigger_v3.lua");
    l0 = self.box_ProximityTrigger_v3_16;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v3_16");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@_MIS440_B10_DialogueManager|1705402680");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_ProximityTrigger_v3_16_Disabled,
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v3_16_Enter,
    });
    self.box_Delay_v5_30 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_30;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_30");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@_MIS440_B10_DialogueManager|1793879104");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_30_TimeElapsed,
    });
    self.box_PlayDialog_v6_45 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_45;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_45");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@_MIS440_B10_DialogueManager|2050359650");
    l0:SetConnections({
    });
end;

function export:Enable()
    local params, l0;
    params = self:OnEnter_box_OutputOrder_v2_21();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@_MIS440_B10_DialogueManager|1372814942", "1372814942", "_MIS440_B10_DialogueManager", "Enable", "box_OutputOrder_v2_21.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:Start_007()
    
end;

function export:Start_008()
    
end;

function export:Start_013()
    local params, l0;
    params = self:OnEnter_box_PlayDialog_v6_54();
    l0 = self.box_PlayDialog_v6_54;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@_MIS440_B10_DialogueManager|1379785472", "1379785472", "_MIS440_B10_DialogueManager", "Start_013", "box_PlayDialog_v6_54.PlayDialog", self, l0:GetLuaBox());
    -- PlayDialog
    l0:Exec(1, params);
end;

function export:Start_016()
    local params, l0;
    params = self:OnEnter_box_PlayDialog_v6_2();
    l0 = self.box_PlayDialog_v6_2;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@_MIS440_B10_DialogueManager|441042755", "441042755", "_MIS440_B10_DialogueManager", "Start_016", "box_PlayDialog_v6_2.PlayDialog", self, l0:GetLuaBox());
    -- PlayDialog
    l0:Exec(1, params);
end;

function export:f_box_PlayDialog_v6_55_Finished()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_52();
    l0 = self.box_PlayDialog_v6_55;
    l1 = self.box_PlayDialog_v6_52;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@_MIS440_B10_DialogueManager|167160991", "167160991", "_MIS440_B10_DialogueManager", "box_PlayDialog_v6_55.Finished", "box_PlayDialog_v6_52.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_PlayDialog_v6_6_Finished()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_29();
    l0 = self.box_PlayDialog_v6_6;
    l1 = self.box_Delay_v5_29;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@_MIS440_B10_DialogueManager|354471521", "354471521", "_MIS440_B10_DialogueManager", "box_PlayDialog_v6_6.Finished", "box_Delay_v5_29.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_21_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PlayDialog_v6_11();
    l0 = self.box_PlayDialog_v6_11;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@_MIS440_B10_DialogueManager|295380074", "295380074", "_MIS440_B10_DialogueManager", "box_OutputOrder_v2_21.Out", "box_PlayDialog_v6_11.PlayDialog", clone:GetLuaBox(), l0:GetLuaBox());
    -- PlayDialog
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_21_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v3_39();
    l0 = self.box_ProximityTrigger_v3_39;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@_MIS440_B10_DialogueManager|315210199", "315210199", "_MIS440_B10_DialogueManager", "box_OutputOrder_v2_21.Out", "box_ProximityTrigger_v3_39.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_21_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v3_34();
    l0 = self.box_ProximityTrigger_v3_34;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@_MIS440_B10_DialogueManager|1726779774", "1726779774", "_MIS440_B10_DialogueManager", "box_OutputOrder_v2_21.Out", "box_ProximityTrigger_v3_34.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_21_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v3_26();
    l0 = self.box_ProximityTrigger_v3_26;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@_MIS440_B10_DialogueManager|1116419602", "1116419602", "_MIS440_B10_DialogueManager", "box_OutputOrder_v2_21.Out", "box_ProximityTrigger_v3_26.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_21_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v3_16();
    l0 = self.box_ProximityTrigger_v3_16;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@_MIS440_B10_DialogueManager|916623682", "916623682", "_MIS440_B10_DialogueManager", "box_OutputOrder_v2_21.Out", "box_ProximityTrigger_v3_16.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_PlayDialog_v6_38_Finished()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_49();
    l0 = self.box_PlayDialog_v6_38;
    l1 = self.box_Delay_v5_49;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@_MIS440_B10_DialogueManager|1522764149", "1522764149", "_MIS440_B10_DialogueManager", "box_PlayDialog_v6_38.Finished", "box_Delay_v5_49.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_PlayDialog_v6_36_Finished()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_30();
    l0 = self.box_PlayDialog_v6_36;
    l1 = self.box_Delay_v5_30;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@_MIS440_B10_DialogueManager|777692457", "777692457", "_MIS440_B10_DialogueManager", "box_PlayDialog_v6_36.Finished", "box_Delay_v5_30.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_Delay_v5_1_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_25();
    l0 = self.box_Delay_v5_1;
    l1 = self.box_PlayDialog_v6_25;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@_MIS440_B10_DialogueManager|40232309", "40232309", "_MIS440_B10_DialogueManager", "box_Delay_v5_1.TimeElapsed", "box_PlayDialog_v6_25.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_ProximityTrigger_v3_34_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_31();
    l0 = self.box_ProximityTrigger_v3_34;
    l1 = self.box_PlayDialog_v6_31;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@_MIS440_B10_DialogueManager|1946030740", "1946030740", "_MIS440_B10_DialogueManager", "box_ProximityTrigger_v3_34.Disabled", "box_PlayDialog_v6_31.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_ProximityTrigger_v3_34_Enter()
    local params, l0;
    params = self:OnEnter_box_ProximityTrigger_v3_34();
    l0 = self.box_ProximityTrigger_v3_34;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@_MIS440_B10_DialogueManager|1149158325", "1149158325", "_MIS440_B10_DialogueManager", "box_ProximityTrigger_v3_34.Enter", "box_ProximityTrigger_v3_34.Disable", l0:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_ProximityTrigger_v3_39_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_36();
    l0 = self.box_ProximityTrigger_v3_39;
    l1 = self.box_PlayDialog_v6_36;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@_MIS440_B10_DialogueManager|482731643", "482731643", "_MIS440_B10_DialogueManager", "box_ProximityTrigger_v3_39.Disabled", "box_PlayDialog_v6_36.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_ProximityTrigger_v3_39_Enter()
    local params, l0;
    params = self:OnEnter_box_ProximityTrigger_v3_39();
    l0 = self.box_ProximityTrigger_v3_39;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@_MIS440_B10_DialogueManager|152781837", "152781837", "_MIS440_B10_DialogueManager", "box_ProximityTrigger_v3_39.Enter", "box_ProximityTrigger_v3_39.Disable", l0:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_PlayDialog_v6_2_Finished()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_58();
    l0 = self.box_PlayDialog_v6_2;
    l1 = self.box_PlayDialog_v6_58;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@_MIS440_B10_DialogueManager|1691588046", "1691588046", "_MIS440_B10_DialogueManager", "box_PlayDialog_v6_2.Finished", "box_PlayDialog_v6_58.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_PlayDialog_v6_52_Finished()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_53();
    l0 = self.box_PlayDialog_v6_52;
    l1 = self.box_PlayDialog_v6_53;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@_MIS440_B10_DialogueManager|626241781", "626241781", "_MIS440_B10_DialogueManager", "box_PlayDialog_v6_52.Finished", "box_PlayDialog_v6_53.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Delay_v5_49_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_45();
    l0 = self.box_Delay_v5_49;
    l1 = self.box_PlayDialog_v6_45;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@_MIS440_B10_DialogueManager|463990605", "463990605", "_MIS440_B10_DialogueManager", "box_Delay_v5_49.TimeElapsed", "box_PlayDialog_v6_45.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_PlayDialog_v6_51_Finished()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_55();
    l0 = self.box_PlayDialog_v6_51;
    l1 = self.box_PlayDialog_v6_55;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@_MIS440_B10_DialogueManager|1354273686", "1354273686", "_MIS440_B10_DialogueManager", "box_PlayDialog_v6_51.Finished", "box_PlayDialog_v6_55.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Delay_v5_29_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_7();
    l0 = self.box_Delay_v5_29;
    l1 = self.box_PlayDialog_v6_7;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@_MIS440_B10_DialogueManager|392471842", "392471842", "_MIS440_B10_DialogueManager", "box_Delay_v5_29.TimeElapsed", "box_PlayDialog_v6_7.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_PlayDialog_v6_54_Finished()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_51();
    l0 = self.box_PlayDialog_v6_54;
    l1 = self.box_PlayDialog_v6_51;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@_MIS440_B10_DialogueManager|1356390192", "1356390192", "_MIS440_B10_DialogueManager", "box_PlayDialog_v6_54.Finished", "box_PlayDialog_v6_51.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_PlayDialog_v6_7_Finished()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_1();
    l0 = self.box_PlayDialog_v6_7;
    l1 = self.box_Delay_v5_1;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@_MIS440_B10_DialogueManager|1397956093", "1397956093", "_MIS440_B10_DialogueManager", "box_PlayDialog_v6_7.Finished", "box_Delay_v5_1.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_PlayDialog_v6_5_Finished()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_6();
    l0 = self.box_PlayDialog_v6_5;
    l1 = self.box_PlayDialog_v6_6;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@_MIS440_B10_DialogueManager|2066382221", "2066382221", "_MIS440_B10_DialogueManager", "box_PlayDialog_v6_5.Finished", "box_PlayDialog_v6_6.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_ProximityTrigger_v3_26_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_38();
    l0 = self.box_ProximityTrigger_v3_26;
    l1 = self.box_PlayDialog_v6_38;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@_MIS440_B10_DialogueManager|1325687320", "1325687320", "_MIS440_B10_DialogueManager", "box_ProximityTrigger_v3_26.Disabled", "box_PlayDialog_v6_38.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_ProximityTrigger_v3_26_Enter()
    local params, l0;
    params = self:OnEnter_box_ProximityTrigger_v3_26();
    l0 = self.box_ProximityTrigger_v3_26;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@_MIS440_B10_DialogueManager|1060568147", "1060568147", "_MIS440_B10_DialogueManager", "box_ProximityTrigger_v3_26.Enter", "box_ProximityTrigger_v3_26.Disable", l0:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_ProximityTrigger_v3_16_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_5();
    l0 = self.box_ProximityTrigger_v3_16;
    l1 = self.box_PlayDialog_v6_5;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@_MIS440_B10_DialogueManager|317257770", "317257770", "_MIS440_B10_DialogueManager", "box_ProximityTrigger_v3_16.Disabled", "box_PlayDialog_v6_5.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_ProximityTrigger_v3_16_Enter()
    local params, l0;
    params = self:OnEnter_box_ProximityTrigger_v3_16();
    l0 = self.box_ProximityTrigger_v3_16;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@_MIS440_B10_DialogueManager|243359177", "243359177", "_MIS440_B10_DialogueManager", "box_ProximityTrigger_v3_16.Enter", "box_ProximityTrigger_v3_16.Disable", l0:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_Delay_v5_30_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_24();
    l0 = self.box_Delay_v5_30;
    l1 = self.box_PlayDialog_v6_24;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@_MIS440_B10_DialogueManager|2004826814", "2004826814", "_MIS440_B10_DialogueManager", "box_Delay_v5_30.TimeElapsed", "box_PlayDialog_v6_24.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:OnEnter_box_PlayDialog_v6_55()
    local params;
    params = {
        -- Group,
        [0] = self.eNickRye,
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "1835813663",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_11()
    local params;
    params = {
        -- Group,
        [0] = self.eNickRye,
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "1016766135",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_6()
    local params;
    params = {
        -- Group,
        [0] = self.eNickRye,
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "1443149189",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_21()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_21");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@_MIS440_B10_DialogueManager|190986706");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
            [0] = 5,
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
                [1] = self.f_box_OutputOrder_v2_21_Out_1,
                [2] = self.f_box_OutputOrder_v2_21_Out_2,
                [3] = self.f_box_OutputOrder_v2_21_Out_3,
                [4] = self.f_box_OutputOrder_v2_21_Out_4,
            },
            count = 5,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_24()
    local params;
    params = {
        -- Group,
        [0] = self.eNickRye,
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "503706455",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_38()
    local params;
    params = {
        -- Group,
        [0] = self.eNickRye,
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "3458264522",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_36()
    local params;
    params = {
        -- Group,
        [0] = self.eNickRye,
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "3208696704",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_1()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 5,
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v3_34()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- colliderFilterId,
        [1] = self.eTarget,
        -- requiresPawnsActive,
        [2] = false,
        -- triggerId,
        [3] = "2108974877147973588",
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v3_39()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- colliderFilterId,
        [1] = self.eTarget,
        -- requiresPawnsActive,
        [2] = false,
        -- triggerId,
        [3] = "2108682079192507552",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_53()
    local params;
    params = {
        -- Group,
        [0] = self.eNickRye,
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "4256519152",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_2()
    local params;
    params = {
        -- Group,
        [0] = self.eNickRye,
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "1837708824",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_52()
    local params;
    params = {
        -- Group,
        [0] = self.eNickRye,
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "1628365389",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_25()
    local params;
    params = {
        -- Group,
        [0] = self.eNickRye,
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "3345365287",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_49()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_58()
    local params;
    params = {
        -- Group,
        [0] = self.eNickRye,
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "417684726",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_51()
    local params;
    params = {
        -- Group,
        [0] = self.eNickRye,
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "3894443515",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_29()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 3,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_54()
    local params;
    params = {
        -- Group,
        [0] = self.eNickRye,
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "1383253068",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_7()
    local params;
    params = {
        -- Group,
        [0] = self.eNickRye,
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "4185263721",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_5()
    local params;
    params = {
        -- Group,
        [0] = self.eNickRye,
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "801930410",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_31()
    local params;
    params = {
        -- Group,
        [0] = self.eNickRye,
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "2583254202",
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v3_26()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- colliderFilterId,
        [1] = self.eTarget,
        -- requiresPawnsActive,
        [2] = false,
        -- triggerId,
        [3] = "2108682171272160423",
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v3_16()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- colliderFilterId,
        [1] = self.eTarget,
        -- requiresPawnsActive,
        [2] = false,
        -- triggerId,
        [3] = "2108682379183809724",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_30()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_45()
    local params;
    params = {
        -- Group,
        [0] = self.eNickRye,
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "805031433",
    };
    return params;
end;

-- Empty out anchor definitions
_compilerVersion = 60;
<DominoMetadata IsStateless="0" IsSystem="0">
	<ControlsIn>
		<ControlIn Name="Enable" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
		<ControlIn Name="Start_007" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
		<ControlIn Name="Start_008" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
		<ControlIn Name="Start_013" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
		<ControlIn Name="Start_016" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
	</ControlsIn>
	<ControlsOut />
	<DatasIn>
		<DataIn Name="eNickRye" AnchorDynType="0" DataTypeID="entity" />
		<DataIn Name="eTarget" AnchorDynType="0" DataTypeID="entity" />
	</DatasIn>
	<DatasOut />
</DominoMetadata>
