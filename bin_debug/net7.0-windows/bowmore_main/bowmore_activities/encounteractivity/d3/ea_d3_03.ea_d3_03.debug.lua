LUAC7{  -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/bowmore_main/bowmore_activities/encounteractivity/d3/ea_d3_03.domino
-- User graph: EA_D3_03
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
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Brick_Secure_Area.Brick_Secure_Area_v5.debug.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityEnd.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityInitialized.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityRetry_v2.lua");
        cboxRes:RegisterBox("Domino/System/AI/SetContextualStrategy.lua");
        cboxRes:RegisterBox("Domino/System/AI/StateListener_v2.lua");
        cboxRes:RegisterBox("Domino/System/Coop/Group/GroupAddToGroup_v2.lua");
        cboxRes:RegisterBox("Domino/System/Coop/Group/RemoveFromGroup_v2.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/RemoveEntity_v2.lua");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/Bowmore_main/Bowmore_Activities/EncounterActivity/D3/EA_D3_03.EA_D3_03.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "In",
            },
            [1] = {
                name = "OnLeaveZone",
            },
        },
        controlInCount = 2,
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
    metadataTable[GetPathID("Domino/Library/Sp/Lib_Brick_Secure_Area.Brick_Secure_Area_v5.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Enable",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "Started",
                delayed = false,
            },
            [1] = {
                name = "Success",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "bCompletePreviousObjective",
                type = "bool",
            },
            [1] = {
                name = "bRequiresObjective",
                type = "bool",
            },
            [2] = {
                name = "eObjectiveAreaMarker",
                type = "entity",
            },
            [3] = {
                name = "gEnemyGroup",
                type = "group",
            },
            [4] = {
                name = "Objective",
                type = "oasis",
            },
        },
        dataInCount = 5,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/Activity/ActivityAcknowledgeGate.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "In",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "Acknowledged",
                delayed = true,
            },
            [1] = {
                name = "Reloaded",
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
    metadataTable[GetPathID("Domino/System/Activity/ActivityEnd.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "EndHardSave",
            },
            [1] = {
                name = "EndNoSave",
            },
            [2] = {
                name = "EndSoftSave",
            },
        },
        controlInCount = 3,
        controlOut = {
        },
        controlOutCount = 0,
        dataIn = {
            [0] = {
                name = "Success",
                type = "bool",
            },
        },
        dataInCount = 1,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/Activity/ActivityInitialized.lua")] = {
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
                delayed = true,
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
    metadataTable[GetPathID("Domino/System/Activity/ActivityRetry_v2.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "Retry",
            },
        },
        controlInCount = 1,
        controlOut = {
        },
        controlOutCount = 0,
        dataIn = {
            [0] = {
                name = "ReasonId",
                type = "oasis",
            },
            [1] = {
                name = "Reload",
                type = "bool",
            },
        },
        dataInCount = 2,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/AI/SetContextualStrategy.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "SetContextualStrategy",
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
                name = "ContextualStrategy",
                type = "entity",
            },
            [1] = {
                name = "Group",
                type = "group",
            },
        },
        dataInCount = 2,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/AI/StateListener_v2.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Alert",
            },
            [1] = {
                name = "Combat",
            },
            [2] = {
                name = "Dead",
            },
            [3] = {
                name = "Disable",
            },
            [4] = {
                name = "Idle_RelaxCautious",
            },
            [5] = {
                name = "Investigate",
            },
        },
        controlInCount = 6,
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
                name = "MemberInState",
                delayed = true,
            },
            [3] = {
                name = "StateStart",
                delayed = true,
            },
            [4] = {
                name = "StateStop",
                delayed = true,
            },
        },
        controlOutCount = 5,
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
                name = "memberCountInState",
                type = "int",
            },
        },
        dataOutCount = 1,
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
    metadataTable[GetPathID("Domino/System/Coop/Group/RemoveFromGroup_v2.lua")] = {
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
                name = "Entities",
                type = "group",
            },
            [1] = {
                name = "Group",
                type = "group",
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
    metadataTable[GetPathID("Domino/System/RemoveEntity_v2.lua")] = {
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
                name = "Group",
                type = "group",
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
    self._name = "EA_D3_03";
    self._elementPathId = "DocumentContainer|Bowmore_main\\Bowmore_Activities\\EncounterActivity\\D3\\EA_D3_03.domino|@EA_D3_03";
    self.LiberatedGroup = "#0244606B";
    self.box_RemoveEntity_v2_11 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_11;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_11");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\EncounterActivity\\D3\\EA_D3_03.domino|@EA_D3_03|347995617");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RemoveEntity_v2_11_Out,
    });
    self.box_RemoveEntity_v2_7 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_7;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_7");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\EncounterActivity\\D3\\EA_D3_03.domino|@EA_D3_03|474406045");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RemoveEntity_v2_7_Out,
    });
    self.box_ActivityInitialized_5 = cbox:CreateBox("Domino/System/Activity/ActivityInitialized.lua");
    l0 = self.box_ActivityInitialized_5;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityInitialized_5");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\EncounterActivity\\D3\\EA_D3_03.domino|@EA_D3_03|726118929");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ActivityInitialized_5_Out,
    });
    self.box_Brick_Secure_Area_v5_1 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_Secure_Area.Brick_Secure_Area_v5.debug.lua");
    l0 = self.box_Brick_Secure_Area_v5_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Secure_Area_v5_1");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\EncounterActivity\\D3\\EA_D3_03.domino|@EA_D3_03|773596122");
    l0:SetConnections({
        -- Success,
        [1] = self.f_box_Brick_Secure_Area_v5_1_Success,
    });
    self.box_StateListener_v2_15 = cbox:CreateBox("Domino/System/AI/StateListener_v2.lua");
    l0 = self.box_StateListener_v2_15;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StateListener_v2_15");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\EncounterActivity\\D3\\EA_D3_03.domino|@EA_D3_03|802785663");
    l0:SetConnections({
        -- StateStart,
        [3] = self.f_box_StateListener_v2_15_StateStart,
    });
    self.box_Brick_Secure_Area_v5_12 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_Secure_Area.Brick_Secure_Area_v5.debug.lua");
    l0 = self.box_Brick_Secure_Area_v5_12;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Secure_Area_v5_12");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\EncounterActivity\\D3\\EA_D3_03.domino|@EA_D3_03|1471575094");
    l0:SetConnections({
        -- Success,
        [1] = self.f_box_Brick_Secure_Area_v5_12_Success,
    });
    self.box_ActivityAcknowledgeGate_9 = cbox:CreateBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
    l0 = self.box_ActivityAcknowledgeGate_9;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityAcknowledgeGate_9");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\EncounterActivity\\D3\\EA_D3_03.domino|@EA_D3_03|1548378664");
    l0:SetConnections({
        -- Acknowledged,
        [0] = self.f_box_ActivityAcknowledgeGate_9_Acknowledged,
        -- Reloaded,
        [1] = self.f_box_ActivityAcknowledgeGate_9_Reloaded,
    });
    self.box_MultipleOR_16 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_16;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_16");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\EncounterActivity\\D3\\EA_D3_03.domino|@EA_D3_03|1603093289");
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
        [0] = self.f_box_MultipleOR_16_Out,
    });
    self.box_MultipleOR_13 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_13;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_13");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\EncounterActivity\\D3\\EA_D3_03.domino|@EA_D3_03|1920304000");
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
        [0] = self.f_box_MultipleOR_13_Out,
    });
    self.box_MultipleOR_3 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_3;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_3");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\EncounterActivity\\D3\\EA_D3_03.domino|@EA_D3_03|2052513118");
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
end;

function export:In()
    local l0;
    l0 = self.box_ActivityAcknowledgeGate_9;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\EncounterActivity\\D3\\EA_D3_03.domino|@EA_D3_03|2045687114", "2045687114", "EA_D3_03", "In", "box_ActivityAcknowledgeGate_9.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:OnLeaveZone()
    local params, l0;
    params = self:OnEnter_box_ActivityRetry_v2_8();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\EncounterActivity\\D3\\EA_D3_03.domino|@EA_D3_03|886773115", "886773115", "EA_D3_03", "OnLeaveZone", "box_ActivityRetry_v2_8.Retry", self, l0:GetLuaBox());
    -- Retry
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_RemoveEntity_v2_11_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityEnd_2();
    l0 = self.box_RemoveEntity_v2_11;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\EncounterActivity\\D3\\EA_D3_03.domino|@EA_D3_03|1099990129", "1099990129", "EA_D3_03", "box_RemoveEntity_v2_11.Out", "box_ActivityEnd_2.EndHardSave", l0:GetLuaBox(), l1:GetLuaBox());
    -- EndHardSave
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_RemoveEntity_v2_7_Out()
    local params, l0, l1;
    params = self:OnEnter_box_RemoveEntity_v2_11();
    l0 = self.box_RemoveEntity_v2_7;
    l1 = self.box_RemoveEntity_v2_11;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\EncounterActivity\\D3\\EA_D3_03.domino|@EA_D3_03|807244520", "807244520", "EA_D3_03", "box_RemoveEntity_v2_7.Out", "box_RemoveEntity_v2_11.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_GroupAddToGroup_v2_10_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/GroupAddToGroup_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_RemoveFromGroup_v2_14();
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/RemoveFromGroup_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\EncounterActivity\\D3\\EA_D3_03.domino|@EA_D3_03|2080069721", "2080069721", "EA_D3_03", "box_GroupAddToGroup_v2_10.Out", "box_RemoveFromGroup_v2_14.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ActivityInitialized_5_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_4();
    l0 = self.box_ActivityInitialized_5;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\EncounterActivity\\D3\\EA_D3_03.domino|@EA_D3_03|1251908868", "1251908868", "EA_D3_03", "box_ActivityInitialized_5.Out", "box_OutputOrder_v2_4.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_Secure_Area_v5_1_Success()
    local l0, l1;
    l0 = self.box_Brick_Secure_Area_v5_1;
    l1 = self.box_MultipleOR_16;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\EncounterActivity\\D3\\EA_D3_03.domino|@EA_D3_03|648319641", "648319641", "EA_D3_03", "box_Brick_Secure_Area_v5_1.Success", "box_MultipleOR_16.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_StateListener_v2_15_StateStart()
    local l0, l1;
    l0 = self.box_StateListener_v2_15;
    l1 = self.box_MultipleOR_16;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\EncounterActivity\\D3\\EA_D3_03.domino|@EA_D3_03|1610638986", "1610638986", "EA_D3_03", "box_StateListener_v2_15.StateStart", "box_MultipleOR_16.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_SetContextualStrategy_6_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    local clone = l0;
    params = self:OnEnter_box_GroupAddToGroup_v2_10();
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/GroupAddToGroup_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\EncounterActivity\\D3\\EA_D3_03.domino|@EA_D3_03|298748761", "298748761", "EA_D3_03", "box_SetContextualStrategy_6.Out", "box_GroupAddToGroup_v2_10.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Brick_Secure_Area_v5_12_Success()
    local l0, l1;
    l0 = self.box_Brick_Secure_Area_v5_12;
    l1 = self.box_MultipleOR_3;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\EncounterActivity\\D3\\EA_D3_03.domino|@EA_D3_03|1328601955", "1328601955", "EA_D3_03", "box_Brick_Secure_Area_v5_12.Success", "box_MultipleOR_3.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_ActivityAcknowledgeGate_9_Acknowledged()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_9;
    l1 = self.box_MultipleOR_13;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\EncounterActivity\\D3\\EA_D3_03.domino|@EA_D3_03|1735199597", "1735199597", "EA_D3_03", "box_ActivityAcknowledgeGate_9.Acknowledged", "box_MultipleOR_13.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ActivityAcknowledgeGate_9_Reloaded()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_9;
    l1 = self.box_MultipleOR_13;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\EncounterActivity\\D3\\EA_D3_03.domino|@EA_D3_03|976896523", "976896523", "EA_D3_03", "box_ActivityAcknowledgeGate_9.Reloaded", "box_MultipleOR_13.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_MultipleOR_16_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SetContextualStrategy_6();
    l0 = self.box_MultipleOR_16;
    l1 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\EncounterActivity\\D3\\EA_D3_03.domino|@EA_D3_03|1018619806", "1018619806", "EA_D3_03", "box_MultipleOR_16.Out", "box_SetContextualStrategy_6.SetContextualStrategy", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetContextualStrategy
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_4_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_StateListener_v2_15();
    l0 = self.box_StateListener_v2_15;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\EncounterActivity\\D3\\EA_D3_03.domino|@EA_D3_03|2099240911", "2099240911", "EA_D3_03", "box_OutputOrder_v2_4.Out", "box_StateListener_v2_15.Combat", clone:GetLuaBox(), l0:GetLuaBox());
    -- Combat
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_4_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Secure_Area_v5_1();
    l0 = self.box_Brick_Secure_Area_v5_1;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\EncounterActivity\\D3\\EA_D3_03.domino|@EA_D3_03|2085227158", "2085227158", "EA_D3_03", "box_OutputOrder_v2_4.Out", "box_Brick_Secure_Area_v5_1.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_4_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Secure_Area_v5_12();
    l0 = self.box_Brick_Secure_Area_v5_12;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\EncounterActivity\\D3\\EA_D3_03.domino|@EA_D3_03|574770078", "574770078", "EA_D3_03", "box_OutputOrder_v2_4.Out", "box_Brick_Secure_Area_v5_12.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(0, params);
end;

function export:f_box_RemoveFromGroup_v2_14_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/RemoveFromGroup_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_3;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\EncounterActivity\\D3\\EA_D3_03.domino|@EA_D3_03|1811608998", "1811608998", "EA_D3_03", "box_RemoveFromGroup_v2_14.Out", "box_MultipleOR_3.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_MultipleOR_13_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_13;
    l1 = self.box_ActivityInitialized_5;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\EncounterActivity\\D3\\EA_D3_03.domino|@EA_D3_03|2042731563", "2042731563", "EA_D3_03", "box_MultipleOR_13.Out", "box_ActivityInitialized_5.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, {
    });
end;

function export:f_box_MultipleOR_3_Out()
    local params, l0, l1;
    params = self:OnEnter_box_RemoveEntity_v2_7();
    l0 = self.box_MultipleOR_3;
    l1 = self.box_RemoveEntity_v2_7;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\EncounterActivity\\D3\\EA_D3_03.domino|@EA_D3_03|1025631371", "1025631371", "EA_D3_03", "box_MultipleOR_3.Out", "box_RemoveEntity_v2_7.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:OnEnter_box_ActivityRetry_v2_8()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityRetry_v2_8");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\EncounterActivity\\D3\\EA_D3_03.domino|@EA_D3_03|273925782");
    l0:SetConnections({
    });
    params = {
        -- Reload,
        [1] = false,
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_11()
    local params;
    params = {
        -- Group,
        [0] = "2109555196339167728",
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_7()
    local params;
    params = {
        -- Group,
        [0] = "2109555187805856231",
    };
    return params;
end;

function export:OnEnter_box_GroupAddToGroup_v2_10()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/GroupAddToGroup_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GroupAddToGroup_v2_10");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\EncounterActivity\\D3\\EA_D3_03.domino|@EA_D3_03|474918567");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GroupAddToGroup_v2_10_Out,
    });
    params = {
        -- FromGroup,
        [0] = "#B6869202",
        -- ToGroup,
        [1] = self.LiberatedGroup,
    };
    return params;
end;

function export:OnEnter_box_Brick_Secure_Area_v5_1()
    local params;
    params = {
        -- bCompletePreviousObjective,
        [0] = false,
        -- bRequiresObjective,
        [1] = false,
        -- gEnemyGroup,
        [3] = "#A770E906",
        -- Objective,
        [4] = {
            section = "LD Gameplay Bricks",
            item = "BRICK_Secure_Area",
            id = "376594",
        },
    };
    return params;
end;

function export:OnEnter_box_StateListener_v2_15()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- group,
        [1] = "#A770E906",
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_6");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\EncounterActivity\\D3\\EA_D3_03.domino|@EA_D3_03|1130259643");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetContextualStrategy_6_Out,
    });
    params = {
        -- Group,
        [1] = "#B6869202",
    };
    return params;
end;

function export:OnEnter_box_Brick_Secure_Area_v5_12()
    local params;
    params = {
        -- bCompletePreviousObjective,
        [0] = false,
        -- bRequiresObjective,
        [1] = false,
        -- gEnemyGroup,
        [3] = "#B6869202",
        -- Objective,
        [4] = {
            section = "LD Gameplay Bricks",
            item = "BRICK_Secure_Area",
            id = "376594",
        },
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_4");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\EncounterActivity\\D3\\EA_D3_03.domino|@EA_D3_03|1710168991");
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
                [0] = self.f_box_OutputOrder_v2_4_Out_0,
                [1] = self.f_box_OutputOrder_v2_4_Out_1,
                [2] = self.f_box_OutputOrder_v2_4_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_RemoveFromGroup_v2_14()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/RemoveFromGroup_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveFromGroup_v2_14");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\EncounterActivity\\D3\\EA_D3_03.domino|@EA_D3_03|1816910051");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RemoveFromGroup_v2_14_Out,
    });
    params = {
        -- Entities,
        [0] = self.LiberatedGroup,
        -- Group,
        [1] = "#B6869202",
    };
    return params;
end;

function export:OnEnter_box_ActivityEnd_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityEnd_2");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\EncounterActivity\\D3\\EA_D3_03.domino|@EA_D3_03|2031756050");
    l0:SetConnections({
    });
    params = {
        -- Success,
        [0] = true,
    };
    return params;
end;

-- Empty out anchor definitions
_compilerVersion = 60;
<DominoMetadata IsStateless="0" IsSystem="0">
	<ControlsIn>
		<ControlIn Name="In" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
		<ControlIn Name="OnLeaveZone" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
	</ControlsIn>
	<ControlsOut />
	<DatasIn />
	<DatasOut />
</DominoMetadata>
