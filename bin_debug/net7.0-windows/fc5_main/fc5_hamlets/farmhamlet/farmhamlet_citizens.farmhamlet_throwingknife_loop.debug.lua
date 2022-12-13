LUACR -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc5_main/fc5_hamlets/farmhamlet/farmhamlet_citizens.domino
-- User graph: FarmHamlet_ThrowingKnife_Loop
-- 
-- 
-- DO NOT EDIT MANUALLY THIS FILE OR YOUR CHANGES WILL BE LOST!
-- Please modify the original Domino script instead. You have been warned.

-- *** SCRIPT INPUT REFLECTION ***
--[[
<InputReflection>
    <DataIn Name="gPlayer" Type="Nomad|group" />
    <DataIn Name="ThrowerNPC" Type="Nomad|entity{}" />
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
        cboxRes:RegisterBox("Domino/System/AI/ContextualAction/ContextualActionListener.lua");
        cboxRes:RegisterBox("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua");
        cboxRes:RegisterBox("Domino/System/Delay_v5.lua");
        cboxRes:RegisterBox("Domino/System/Gate_v3.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/ProximityRadiusListener_v3.lua");
        cboxRes:RegisterBox("Domino/System/ProximityTrigger_v2.lua");
        cboxRes:RegisterBox("Domino/System/Random.lua");
        cboxRes:RegisterBox("Domino/System/RandomFloat_v2.lua");
        cboxRes:RegisterBox("Domino/System/SetBoolean_v2.lua");
        cboxRes:RegisterBox("Domino/System/SimpleNode.lua");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/User/FC5_main/FC5_Hamlets/FarmHamlet/FarmHamlet_Citizens.FarmHamlet_ThrowingKnife_Loop.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Enable",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "Enabled",
                delayed = false,
            },
            [1] = {
                name = "Player_In_Mark",
                delayed = false,
            },
            [2] = {
                name = "Thrower_Will_Shoot",
                delayed = false,
            },
        },
        controlOutCount = 3,
        dataIn = {
            [0] = {
                name = "gPlayer",
                type = "group",
            },
            [1] = {
                name = "ThrowerNPC",
                type = "entity",
            },
        },
        dataInCount = 2,
        dataOut = {
            [0] = {
                name = "ThrowerIsSpecator",
                type = "bool",
            },
        },
        dataOutCount = 1,
    };
    metadataTable[GetPathID("Domino/System/AI/ContextualAction/ContextualActionListener.lua")] = {
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
                name = "Available",
                delayed = true,
            },
            [1] = {
                name = "Disabled",
                delayed = false,
            },
            [2] = {
                name = "Enabled",
                delayed = false,
            },
            [3] = {
                name = "End",
                delayed = true,
            },
            [4] = {
                name = "Interrupt",
                delayed = true,
            },
            [5] = {
                name = "Markup1",
                delayed = true,
            },
            [6] = {
                name = "Markup2",
                delayed = true,
            },
            [7] = {
                name = "Select",
                delayed = true,
            },
            [8] = {
                name = "Start",
                delayed = true,
            },
        },
        controlOutCount = 9,
        dataIn = {
            [0] = {
                name = "ContextualAction",
                type = "entity",
            },
            [1] = {
                name = "UserFilter",
                type = "entity",
            },
        },
        dataInCount = 2,
        dataOut = {
            [0] = {
                name = "User",
                type = "entity",
            },
        },
        dataOutCount = 1,
    };
    metadataTable[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "CallForceNormalEnd",
            },
            [1] = {
                name = "CallInterrupt",
            },
            [2] = {
                name = "Disable",
            },
            [3] = {
                name = "Enable",
            },
            [4] = {
                name = "Use",
            },
        },
        controlInCount = 5,
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
                name = "ForceNormalEndCalled",
                delayed = false,
            },
            [3] = {
                name = "InterruptCalled",
                delayed = false,
            },
            [4] = {
                name = "UseCalled",
                delayed = false,
            },
        },
        controlOutCount = 5,
        dataIn = {
            [0] = {
                name = "ContextualAction",
                type = "entity",
            },
            [1] = {
                name = "Entity",
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
    metadataTable[GetPathID("Domino/System/ProximityRadiusListener_v3.lua")] = {
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
                name = "AllFar",
                delayed = true,
            },
            [1] = {
                name = "AllNear",
                delayed = true,
            },
            [2] = {
                name = "Disabled",
                delayed = false,
            },
            [3] = {
                name = "Enabled",
                delayed = false,
            },
            [4] = {
                name = "SomeoneFar",
                delayed = true,
            },
            [5] = {
                name = "SomeoneNear",
                delayed = true,
            },
        },
        controlOutCount = 6,
        dataIn = {
            [0] = {
                name = "autoDisable",
                type = "bool",
            },
            [1] = {
                name = "Entities",
                type = "group",
            },
            [2] = {
                name = "farZone",
                type = "float",
            },
            [3] = {
                name = "id2",
                type = "entity",
            },
            [4] = {
                name = "nearZone",
                type = "float",
            },
            [5] = {
                name = "use2d",
                type = "bool",
            },
        },
        dataInCount = 6,
        dataOut = {
            [0] = {
                name = "currentEntity",
                type = "entity",
            },
        },
        dataOutCount = 1,
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
    metadataTable[GetPathID("Domino/System/Random.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "In",
            },
            [1] = {
                name = "Reset",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "None",
                delayed = false,
            },
            [1] = {
                name = "Out",
                delayed = false,
            },
            [2] = {
                name = "Output",
                dynamicType = 1,
                delayed = false,
            },
        },
        controlOutCount = 3,
        dataIn = {
            [0] = {
                name = "AutoReset",
                type = "bool",
            },
            [1] = {
                name = "Probability",
                type = "float",
                dynamicType = 1,
            },
        },
        dataInCount = 2,
        dataOut = {
            [0] = {
                name = "OutputNb",
                type = "int",
            },
        },
        dataOutCount = 1,
    };
    metadataTable[GetPathID("Domino/System/RandomFloat_v2.lua")] = {
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
                name = "Max",
                type = "float",
            },
            [1] = {
                name = "Min",
                type = "float",
            },
        },
        dataInCount = 2,
        dataOut = {
            [0] = {
                name = "Result",
                type = "float",
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
    self._name = "FarmHamlet_ThrowingKnife_Loop";
    self._elementPathId = "DocumentContainer|FC5_main\\FC5_Hamlets\\FarmHamlet\\FarmHamlet_Citizens.domino|@FarmHamlet_ThrowingKnife_Loop";
    self.Thrower_Will_Shoot = DummyFunction;
    self.Player_In_Mark = DummyFunction;
    self.Enabled = DummyFunction;
    self.box_ContextualActionListener_30 = cbox:CreateBox("Domino/System/AI/ContextualAction/ContextualActionListener.lua");
    l0 = self.box_ContextualActionListener_30;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ContextualActionListener_30");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Hamlets\\FarmHamlet\\FarmHamlet_Citizens.domino|@FarmHamlet_ThrowingKnife_Loop|150159591");
    l0:SetConnections({
        -- Start,
        [8] = self.f_box_ContextualActionListener_30_Start,
    });
    self.box_MultipleOR_40 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_40;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_40");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Hamlets\\FarmHamlet\\FarmHamlet_Citizens.domino|@FarmHamlet_ThrowingKnife_Loop|230502728");
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
        [0] = self.f_box_MultipleOR_40_Out,
    });
    self.box_ProximityRadiusListener_v3_29 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_29;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_29");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Hamlets\\FarmHamlet\\FarmHamlet_Citizens.domino|@FarmHamlet_ThrowingKnife_Loop|327428234");
    l0:SetConnections({
        -- SomeoneFar,
        [4] = self.f_box_ProximityRadiusListener_v3_29_SomeoneFar,
    });
    self.box_ProximityTrigger_v2_31 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_31;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_31");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Hamlets\\FarmHamlet\\FarmHamlet_Citizens.domino|@FarmHamlet_ThrowingKnife_Loop|497863682");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v2_31_Enter,
    });
    self.box_MultipleOR_11 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_11;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_11");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Hamlets\\FarmHamlet\\FarmHamlet_Citizens.domino|@FarmHamlet_ThrowingKnife_Loop|536477148");
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
        [0] = self.f_box_MultipleOR_11_Out,
    });
    self.box_Delay_v5_36 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_36;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_36");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Hamlets\\FarmHamlet\\FarmHamlet_Citizens.domino|@FarmHamlet_ThrowingKnife_Loop|601357802");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_36_TimeElapsed,
    });
    self.box_Random_33 = cbox:CreateBox("Domino/System/Random.lua");
    l0 = self.box_Random_33;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Random_33");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Hamlets\\FarmHamlet\\FarmHamlet_Citizens.domino|@FarmHamlet_ThrowingKnife_Loop|738166319");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
            [2] = 2,
        },
        dataIn = {
            [1] = 2,
        },
        dataOut = {
        },
    });
    l0:SetConnections({
        -- Output,
        [2] = {
            connections = {
                [0] = self.f_box_Random_33_Output_0,
                [1] = self.f_box_Random_33_Output_1,
            },
            count = 2,
        },
    });
    self.box_ProximityTrigger_v2_32 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_32;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_32");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Hamlets\\FarmHamlet\\FarmHamlet_Citizens.domino|@FarmHamlet_ThrowingKnife_Loop|1087861685");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_ProximityTrigger_v2_32_Disabled,
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v2_32_Enter,
    });
    self.box_Random_39 = cbox:CreateBox("Domino/System/Random.lua");
    l0 = self.box_Random_39;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Random_39");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Hamlets\\FarmHamlet\\FarmHamlet_Citizens.domino|@FarmHamlet_ThrowingKnife_Loop|1179067167");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
            [2] = 2,
        },
        dataIn = {
            [1] = 2,
        },
        dataOut = {
        },
    });
    l0:SetConnections({
        -- Output,
        [2] = {
            connections = {
                [0] = self.f_box_Random_39_Output_0,
                [1] = self.f_box_Random_39_Output_1,
            },
            count = 2,
        },
    });
    self.box_Random_23 = cbox:CreateBox("Domino/System/Random.lua");
    l0 = self.box_Random_23;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Random_23");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Hamlets\\FarmHamlet\\FarmHamlet_Citizens.domino|@FarmHamlet_ThrowingKnife_Loop|1248780456");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
            [2] = 4,
        },
        dataIn = {
            [1] = 4,
        },
        dataOut = {
        },
    });
    l0:SetConnections({
        -- Output,
        [2] = {
            connections = {
                [0] = self.f_box_Random_23_Output_0,
                [1] = self.f_box_Random_23_Output_1,
                [2] = self.f_box_Random_23_Output_2,
                [3] = self.f_box_Random_23_Output_3,
            },
            count = 4,
        },
    });
    self.box_MultipleOR_18 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_18;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_18");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Hamlets\\FarmHamlet\\FarmHamlet_Citizens.domino|@FarmHamlet_ThrowingKnife_Loop|1314383777");
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
    self.box_Delay_v5_21 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_21;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_21");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Hamlets\\FarmHamlet\\FarmHamlet_Citizens.domino|@FarmHamlet_ThrowingKnife_Loop|1585871842");
    l0:SetConnections({
        -- Stopped,
        [4] = self.f_box_Delay_v5_21_Stopped,
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_21_TimeElapsed,
    });
    self.box_Delay_v5_6 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_6;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_6");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Hamlets\\FarmHamlet\\FarmHamlet_Citizens.domino|@FarmHamlet_ThrowingKnife_Loop|1589099751");
    l0:SetConnections({
        -- Stopped,
        [4] = self.f_box_Delay_v5_6_Stopped,
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_6_TimeElapsed,
    });
    self.box_ContextualActionListener_14 = cbox:CreateBox("Domino/System/AI/ContextualAction/ContextualActionListener.lua");
    l0 = self.box_ContextualActionListener_14;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ContextualActionListener_14");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Hamlets\\FarmHamlet\\FarmHamlet_Citizens.domino|@FarmHamlet_ThrowingKnife_Loop|1748929046");
    l0:SetConnections({
        -- Start,
        [8] = self.f_box_ContextualActionListener_14_Start,
    });
    self.box_Gate_v3_38 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_38;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_38");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Hamlets\\FarmHamlet\\FarmHamlet_Citizens.domino|@FarmHamlet_ThrowingKnife_Loop|1793026903");
    l0:SetConnections({
        -- Closed,
        [0] = self.f_box_Gate_v3_38_Closed,
        -- Opened,
        [1] = self.f_box_Gate_v3_38_Opened,
        -- Out,
        [2] = self.f_box_Gate_v3_38_Out,
    });
    self.box_Random_20 = cbox:CreateBox("Domino/System/Random.lua");
    l0 = self.box_Random_20;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Random_20");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Hamlets\\FarmHamlet\\FarmHamlet_Citizens.domino|@FarmHamlet_ThrowingKnife_Loop|1835638214");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
            [2] = 3,
        },
        dataIn = {
            [1] = 3,
        },
        dataOut = {
        },
    });
    l0:SetConnections({
        -- Output,
        [2] = {
            connections = {
                [0] = self.f_box_Random_20_Output_0,
                [1] = self.f_box_Random_20_Output_1,
                [2] = self.f_box_Random_20_Output_2,
            },
            count = 3,
        },
    });
    self.box_Delay_v5_16 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_16;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_16");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Hamlets\\FarmHamlet\\FarmHamlet_Citizens.domino|@FarmHamlet_ThrowingKnife_Loop|1929411194");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_16_TimeElapsed,
    });
    self.box_MultipleOR_13 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_13;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_13");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Hamlets\\FarmHamlet\\FarmHamlet_Citizens.domino|@FarmHamlet_ThrowingKnife_Loop|1985613440");
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
        [0] = self.f_box_MultipleOR_13_Out,
    });
    self.box_MultipleOR_10 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_10;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_10");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Hamlets\\FarmHamlet\\FarmHamlet_Citizens.domino|@FarmHamlet_ThrowingKnife_Loop|2001506673");
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
    self.box_ProximityRadiusListener_v3_24 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_24;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_24");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Hamlets\\FarmHamlet\\FarmHamlet_Citizens.domino|@FarmHamlet_ThrowingKnife_Loop|2041484181");
    l0:SetConnections({
        -- Enabled,
        [3] = self.f_box_ProximityRadiusListener_v3_24_Enabled,
        -- SomeoneNear,
        [5] = self.f_box_ProximityRadiusListener_v3_24_SomeoneNear,
    });
end;

function export:Enable()
    local l0;
    l0 = self.box_MultipleOR_11;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Hamlets\\FarmHamlet\\FarmHamlet_Citizens.domino|@FarmHamlet_ThrowingKnife_Loop|1691493378", "1691493378", "FarmHamlet_ThrowingKnife_Loop", "Enable", "box_MultipleOR_11.Input", self, l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Simple_Node_42_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_35();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Hamlets\\FarmHamlet\\FarmHamlet_Citizens.domino|@FarmHamlet_ThrowingKnife_Loop|481291769", "481291769", "FarmHamlet_ThrowingKnife_Loop", "box_Simple_Node_42.Out", "box_UseContextualActionModifier_v3_35.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_43_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_38();
    l0 = self.box_Gate_v3_38;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Hamlets\\FarmHamlet\\FarmHamlet_Citizens.domino|@FarmHamlet_ThrowingKnife_Loop|235033100", "235033100", "FarmHamlet_ThrowingKnife_Loop", "box_Simple_Node_43.Out", "box_Gate_v3_38.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
end;

function export:f_box_ContextualActionListener_30_Start()
    local params, l0, l1;
    params = self:OnEnter_box_RandomFloat_v2_4();
    l0 = self.box_ContextualActionListener_30;
    l1 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Hamlets\\FarmHamlet\\FarmHamlet_Citizens.domino|@FarmHamlet_ThrowingKnife_Loop|445332349", "445332349", "FarmHamlet_ThrowingKnife_Loop", "box_ContextualActionListener_30.Start", "box_RandomFloat_v2_4.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_RandomFloat_v2_2_Out()
    local params, l0;
    self:OnExit_box_RandomFloat_v2_2_Out();
    l0 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_21();
    l0 = self.box_Delay_v5_21;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Hamlets\\FarmHamlet\\FarmHamlet_Citizens.domino|@FarmHamlet_ThrowingKnife_Loop|528545182", "528545182", "FarmHamlet_ThrowingKnife_Loop", "box_RandomFloat_v2_2.Out", "box_Delay_v5_21.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_MultipleOR_40_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ContextualActionListener_30();
    l0 = self.box_MultipleOR_40;
    l1 = self.box_ContextualActionListener_30;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Hamlets\\FarmHamlet\\FarmHamlet_Citizens.domino|@FarmHamlet_ThrowingKnife_Loop|1820832851", "1820832851", "FarmHamlet_ThrowingKnife_Loop", "box_MultipleOR_40.Out", "box_ContextualActionListener_30.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_RandomFloat_v2_28_Out()
    local params, l0;
    self:OnExit_box_RandomFloat_v2_28_Out();
    l0 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_16();
    l0 = self.box_Delay_v5_16;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Hamlets\\FarmHamlet\\FarmHamlet_Citizens.domino|@FarmHamlet_ThrowingKnife_Loop|1730911005", "1730911005", "FarmHamlet_ThrowingKnife_Loop", "box_RandomFloat_v2_28.Out", "box_Delay_v5_16.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_SetBoolean_v2_45_Out()
    local params, l0;
    self:OnExit_box_SetBoolean_v2_45_Out();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_5();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Hamlets\\FarmHamlet\\FarmHamlet_Citizens.domino|@FarmHamlet_ThrowingKnife_Loop|1171649989", "1171649989", "FarmHamlet_ThrowingKnife_Loop", "box_SetBoolean_v2_45.Out", "box_OutputOrder_v2_5.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ProximityRadiusListener_v3_29_SomeoneFar()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_21();
    l0 = self.box_ProximityRadiusListener_v3_29;
    l1 = self.box_Delay_v5_21;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Hamlets\\FarmHamlet\\FarmHamlet_Citizens.domino|@FarmHamlet_ThrowingKnife_Loop|1178526501", "1178526501", "FarmHamlet_ThrowingKnife_Loop", "box_ProximityRadiusListener_v3_29.SomeoneFar", "box_Delay_v5_21.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(3, params);
end;

function export:f_box_OutputOrder_v2_26_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_RandomFloat_v2_2();
    l0 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Hamlets\\FarmHamlet\\FarmHamlet_Citizens.domino|@FarmHamlet_ThrowingKnife_Loop|468535466", "468535466", "FarmHamlet_ThrowingKnife_Loop", "box_OutputOrder_v2_26.Out", "box_RandomFloat_v2_2.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_26_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityRadiusListener_v3_29();
    l0 = self.box_ProximityRadiusListener_v3_29;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Hamlets\\FarmHamlet\\FarmHamlet_Citizens.domino|@FarmHamlet_ThrowingKnife_Loop|775327822", "775327822", "FarmHamlet_ThrowingKnife_Loop", "box_OutputOrder_v2_26.Out", "box_ProximityRadiusListener_v3_29.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_5_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_38();
    l0 = self.box_Gate_v3_38;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Hamlets\\FarmHamlet\\FarmHamlet_Citizens.domino|@FarmHamlet_ThrowingKnife_Loop|1028732103", "1028732103", "FarmHamlet_ThrowingKnife_Loop", "box_OutputOrder_v2_5.Out", "box_Gate_v3_38.Open", clone:GetLuaBox(), l0:GetLuaBox());
    -- Open
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_5_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityRadiusListener_v3_24();
    l0 = self.box_ProximityRadiusListener_v3_24;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Hamlets\\FarmHamlet\\FarmHamlet_Citizens.domino|@FarmHamlet_ThrowingKnife_Loop|1345207902", "1345207902", "FarmHamlet_ThrowingKnife_Loop", "box_OutputOrder_v2_5.Out", "box_ProximityRadiusListener_v3_24.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_5_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_RandomFloat_v2_28();
    l0 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Hamlets\\FarmHamlet\\FarmHamlet_Citizens.domino|@FarmHamlet_ThrowingKnife_Loop|1512838552", "1512838552", "FarmHamlet_ThrowingKnife_Loop", "box_OutputOrder_v2_5.Out", "box_RandomFloat_v2_28.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ProximityTrigger_v2_31_Enter()
    local l0;
    l0 = self.box_ProximityTrigger_v2_31;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Hamlets\\FarmHamlet\\FarmHamlet_Citizens.domino|@FarmHamlet_ThrowingKnife_Loop|1783035859", "1783035859", "FarmHamlet_ThrowingKnife_Loop", "box_ProximityTrigger_v2_31.Enter", "Player_In_Mark", l0:GetLuaBox(), self);
    self:Player_In_Mark();
end;

function export:f_box_MultipleOR_11_Out()
    local params, l0, l1;
    params = self:OnEnter_box_UseContextualActionModifier_v3_27();
    l0 = self.box_MultipleOR_11;
    l1 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Hamlets\\FarmHamlet\\FarmHamlet_Citizens.domino|@FarmHamlet_ThrowingKnife_Loop|2114017623", "2114017623", "FarmHamlet_ThrowingKnife_Loop", "box_MultipleOR_11.Out", "box_UseContextualActionModifier_v3_27.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_36_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_ContextualActionListener_14();
    l0 = self.box_Delay_v5_36;
    l1 = self.box_ContextualActionListener_14;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Hamlets\\FarmHamlet\\FarmHamlet_Citizens.domino|@FarmHamlet_ThrowingKnife_Loop|457181732", "457181732", "FarmHamlet_ThrowingKnife_Loop", "box_Delay_v5_36.TimeElapsed", "box_ContextualActionListener_14.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_UseContextualActionModifier_v3_1_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_1();
    TraceConnection("DocumentContainer|FC5_main\\FC5_Hamlets\\FarmHamlet\\FarmHamlet_Citizens.domino|@FarmHamlet_ThrowingKnife_Loop|1841224619", "1841224619", "FarmHamlet_ThrowingKnife_Loop", "box_UseContextualActionModifier_v3_1.Enabled", "box_UseContextualActionModifier_v3_1.Use", clone:GetLuaBox(), l0:GetLuaBox());
    -- Use
    l0:Exec(4, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_1_UseCalled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetBoolean_v2_44();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Hamlets\\FarmHamlet\\FarmHamlet_Citizens.domino|@FarmHamlet_ThrowingKnife_Loop|21129974", "21129974", "FarmHamlet_ThrowingKnife_Loop", "box_UseContextualActionModifier_v3_1.UseCalled", "box_SetBoolean_v2_44.True", clone:GetLuaBox(), l0:GetLuaBox());
    -- True
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Random_33_Output_0()
    local l0, l1;
    l0 = self.box_Random_33;
    l1 = self.box_MultipleOR_18;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Hamlets\\FarmHamlet\\FarmHamlet_Citizens.domino|@FarmHamlet_ThrowingKnife_Loop|1789889447", "1789889447", "FarmHamlet_ThrowingKnife_Loop", "box_Random_33.Output", "box_MultipleOR_18.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Random_33_Output_1()
    local l0, l1;
    l0 = self.box_Random_33;
    l1 = self.box_MultipleOR_18;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Hamlets\\FarmHamlet\\FarmHamlet_Citizens.domino|@FarmHamlet_ThrowingKnife_Loop|593282662", "593282662", "FarmHamlet_ThrowingKnife_Loop", "box_Random_33.Output", "box_MultipleOR_18.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_RandomFloat_v2_4_Out()
    local params, l0;
    self:OnExit_box_RandomFloat_v2_4_Out();
    l0 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_6();
    l0 = self.box_Delay_v5_6;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Hamlets\\FarmHamlet\\FarmHamlet_Citizens.domino|@FarmHamlet_ThrowingKnife_Loop|1529720621", "1529720621", "FarmHamlet_ThrowingKnife_Loop", "box_RandomFloat_v2_4.Out", "box_Delay_v5_6.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_SetBoolean_v2_44_Out()
    local params, l0;
    self:OnExit_box_SetBoolean_v2_44_Out();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Random_39();
    l0 = self.box_Random_39;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Hamlets\\FarmHamlet\\FarmHamlet_Citizens.domino|@FarmHamlet_ThrowingKnife_Loop|1833490527", "1833490527", "FarmHamlet_ThrowingKnife_Loop", "box_SetBoolean_v2_44.Out", "box_Random_39.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_UseContextualActionModifier_v3_27_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_27();
    TraceConnection("DocumentContainer|FC5_main\\FC5_Hamlets\\FarmHamlet\\FarmHamlet_Citizens.domino|@FarmHamlet_ThrowingKnife_Loop|1632700329", "1632700329", "FarmHamlet_ThrowingKnife_Loop", "box_UseContextualActionModifier_v3_27.Enabled", "box_UseContextualActionModifier_v3_27.Use", clone:GetLuaBox(), l0:GetLuaBox());
    -- Use
    l0:Exec(4, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_27_UseCalled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetBoolean_v2_45();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Hamlets\\FarmHamlet\\FarmHamlet_Citizens.domino|@FarmHamlet_ThrowingKnife_Loop|256395905", "256395905", "FarmHamlet_ThrowingKnife_Loop", "box_UseContextualActionModifier_v3_27.UseCalled", "box_SetBoolean_v2_45.False", clone:GetLuaBox(), l0:GetLuaBox());
    -- False
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ProximityTrigger_v2_32_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_36();
    l0 = self.box_ProximityTrigger_v2_32;
    l1 = self.box_Delay_v5_36;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Hamlets\\FarmHamlet\\FarmHamlet_Citizens.domino|@FarmHamlet_ThrowingKnife_Loop|982198226", "982198226", "FarmHamlet_ThrowingKnife_Loop", "box_ProximityTrigger_v2_32.Disabled", "box_Delay_v5_36.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(3, params);
end;

function export:f_box_ProximityTrigger_v2_32_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_36();
    l0 = self.box_ProximityTrigger_v2_32;
    l1 = self.box_Delay_v5_36;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Hamlets\\FarmHamlet\\FarmHamlet_Citizens.domino|@FarmHamlet_ThrowingKnife_Loop|765431862", "765431862", "FarmHamlet_ThrowingKnife_Loop", "box_ProximityTrigger_v2_32.Enter", "box_Delay_v5_36.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_Random_39_Output_0()
    local l0, l1;
    l0 = self.box_Random_39;
    l1 = self.box_MultipleOR_10;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Hamlets\\FarmHamlet\\FarmHamlet_Citizens.domino|@FarmHamlet_ThrowingKnife_Loop|3687769", "3687769", "FarmHamlet_ThrowingKnife_Loop", "box_Random_39.Output", "box_MultipleOR_10.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Random_39_Output_1()
    local l0, l1;
    l0 = self.box_Random_39;
    l1 = self.box_MultipleOR_10;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Hamlets\\FarmHamlet\\FarmHamlet_Citizens.domino|@FarmHamlet_ThrowingKnife_Loop|1066961306", "1066961306", "FarmHamlet_ThrowingKnife_Loop", "box_Random_39.Output", "box_MultipleOR_10.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Random_23_Output_0()
    local l0, l1;
    l0 = self.box_Random_23;
    l1 = self.box_MultipleOR_13;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Hamlets\\FarmHamlet\\FarmHamlet_Citizens.domino|@FarmHamlet_ThrowingKnife_Loop|1470155197", "1470155197", "FarmHamlet_ThrowingKnife_Loop", "box_Random_23.Output", "box_MultipleOR_13.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Random_23_Output_1()
    local l0, l1;
    l0 = self.box_Random_23;
    l1 = self.box_MultipleOR_13;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Hamlets\\FarmHamlet\\FarmHamlet_Citizens.domino|@FarmHamlet_ThrowingKnife_Loop|1029894474", "1029894474", "FarmHamlet_ThrowingKnife_Loop", "box_Random_23.Output", "box_MultipleOR_13.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Random_23_Output_2()
    local l0, l1;
    l0 = self.box_Random_23;
    l1 = self.box_MultipleOR_13;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Hamlets\\FarmHamlet\\FarmHamlet_Citizens.domino|@FarmHamlet_ThrowingKnife_Loop|1435036758", "1435036758", "FarmHamlet_ThrowingKnife_Loop", "box_Random_23.Output", "box_MultipleOR_13.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_Random_23_Output_3()
    local l0, l1;
    l0 = self.box_Random_23;
    l1 = self.box_MultipleOR_13;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Hamlets\\FarmHamlet\\FarmHamlet_Citizens.domino|@FarmHamlet_ThrowingKnife_Loop|1765303963", "1765303963", "FarmHamlet_ThrowingKnife_Loop", "box_Random_23.Output", "box_MultipleOR_13.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 3);
end;

function export:f_box_MultipleOR_18_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_42();
    l0 = self.box_MultipleOR_18;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Hamlets\\FarmHamlet\\FarmHamlet_Citizens.domino|@FarmHamlet_ThrowingKnife_Loop|1242539148", "1242539148", "FarmHamlet_ThrowingKnife_Loop", "box_MultipleOR_18.Out", "box_Simple_Node_42.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_35_Disabled()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_11;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Hamlets\\FarmHamlet\\FarmHamlet_Citizens.domino|@FarmHamlet_ThrowingKnife_Loop|1489609001", "1489609001", "FarmHamlet_ThrowingKnife_Loop", "box_UseContextualActionModifier_v3_35.Disabled", "box_MultipleOR_11.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_41_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_8();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Hamlets\\FarmHamlet\\FarmHamlet_Citizens.domino|@FarmHamlet_ThrowingKnife_Loop|170208433", "170208433", "FarmHamlet_ThrowingKnife_Loop", "box_OutputOrder_v2_41.Out", "box_UseContextualActionModifier_v3_8.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_41_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_38();
    l0 = self.box_Gate_v3_38;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Hamlets\\FarmHamlet\\FarmHamlet_Citizens.domino|@FarmHamlet_ThrowingKnife_Loop|466065733", "466065733", "FarmHamlet_ThrowingKnife_Loop", "box_OutputOrder_v2_41.Out", "box_Gate_v3_38.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
end;

function export:f_box_Delay_v5_21_Stopped()
    local params, l0, l1;
    params = self:OnEnter_box_Random_33();
    l0 = self.box_Delay_v5_21;
    l1 = self.box_Random_33;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Hamlets\\FarmHamlet\\FarmHamlet_Citizens.domino|@FarmHamlet_ThrowingKnife_Loop|1948710510", "1948710510", "FarmHamlet_ThrowingKnife_Loop", "box_Delay_v5_21.Stopped", "box_Random_33.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_Delay_v5_21_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityTrigger_v2_31();
    l0 = self.box_Delay_v5_21;
    l1 = self.box_ProximityTrigger_v2_31;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Hamlets\\FarmHamlet\\FarmHamlet_Citizens.domino|@FarmHamlet_ThrowingKnife_Loop|1376697215", "1376697215", "FarmHamlet_ThrowingKnife_Loop", "box_Delay_v5_21.TimeElapsed", "box_ProximityTrigger_v2_31.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_Delay_v5_6_Stopped()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityTrigger_v2_32();
    l0 = self.box_Delay_v5_6;
    l1 = self.box_ProximityTrigger_v2_32;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Hamlets\\FarmHamlet\\FarmHamlet_Citizens.domino|@FarmHamlet_ThrowingKnife_Loop|838690284", "838690284", "FarmHamlet_ThrowingKnife_Loop", "box_Delay_v5_6.Stopped", "box_ProximityTrigger_v2_32.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_Delay_v5_6_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityTrigger_v2_32();
    l0 = self.box_Delay_v5_6;
    l1 = self.box_ProximityTrigger_v2_32;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Hamlets\\FarmHamlet\\FarmHamlet_Citizens.domino|@FarmHamlet_ThrowingKnife_Loop|1431555115", "1431555115", "FarmHamlet_ThrowingKnife_Loop", "box_Delay_v5_6.TimeElapsed", "box_ProximityTrigger_v2_32.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_UseContextualActionModifier_v3_8_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_1();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Hamlets\\FarmHamlet\\FarmHamlet_Citizens.domino|@FarmHamlet_ThrowingKnife_Loop|1239529840", "1239529840", "FarmHamlet_ThrowingKnife_Loop", "box_UseContextualActionModifier_v3_8.Disabled", "box_UseContextualActionModifier_v3_1.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ContextualActionListener_14_Start()
    local params, l0, l1;
    params = self:OnEnter_box_Random_20();
    l0 = self.box_ContextualActionListener_14;
    l1 = self.box_Random_20;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Hamlets\\FarmHamlet\\FarmHamlet_Citizens.domino|@FarmHamlet_ThrowingKnife_Loop|1818066590", "1818066590", "FarmHamlet_ThrowingKnife_Loop", "box_ContextualActionListener_14.Start", "box_Random_20.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_Gate_v3_38_Closed()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_6();
    l0 = self.box_Gate_v3_38;
    l1 = self.box_Delay_v5_6;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Hamlets\\FarmHamlet\\FarmHamlet_Citizens.domino|@FarmHamlet_ThrowingKnife_Loop|758716800", "758716800", "FarmHamlet_ThrowingKnife_Loop", "box_Gate_v3_38.Closed", "box_Delay_v5_6.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(3, params);
end;

function export:f_box_Gate_v3_38_Opened()
    local l0, l1;
    l0 = self.box_Gate_v3_38;
    l1 = self.box_MultipleOR_40;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Hamlets\\FarmHamlet\\FarmHamlet_Citizens.domino|@FarmHamlet_ThrowingKnife_Loop|1774553044", "1774553044", "FarmHamlet_ThrowingKnife_Loop", "box_Gate_v3_38.Opened", "box_MultipleOR_40.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Gate_v3_38_Out()
    local l0, l1;
    l0 = self.box_Gate_v3_38;
    l1 = self.box_MultipleOR_40;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Hamlets\\FarmHamlet\\FarmHamlet_Citizens.domino|@FarmHamlet_ThrowingKnife_Loop|1497200848", "1497200848", "FarmHamlet_ThrowingKnife_Loop", "box_Gate_v3_38.Out", "box_MultipleOR_40.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Random_20_Output_0()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_43();
    l0 = self.box_Random_20;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Hamlets\\FarmHamlet\\FarmHamlet_Citizens.domino|@FarmHamlet_ThrowingKnife_Loop|1475584388", "1475584388", "FarmHamlet_ThrowingKnife_Loop", "box_Random_20.Output", "box_Simple_Node_43.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Random_20_Output_1()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_43();
    l0 = self.box_Random_20;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Hamlets\\FarmHamlet\\FarmHamlet_Citizens.domino|@FarmHamlet_ThrowingKnife_Loop|384283345", "384283345", "FarmHamlet_ThrowingKnife_Loop", "box_Random_20.Output", "box_Simple_Node_43.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Random_20_Output_2()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_43();
    l0 = self.box_Random_20;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Hamlets\\FarmHamlet\\FarmHamlet_Citizens.domino|@FarmHamlet_ThrowingKnife_Loop|841129091", "841129091", "FarmHamlet_ThrowingKnife_Loop", "box_Random_20.Output", "box_Simple_Node_43.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_16_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_Random_23();
    l0 = self.box_Delay_v5_16;
    l1 = self.box_Random_23;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Hamlets\\FarmHamlet\\FarmHamlet_Citizens.domino|@FarmHamlet_ThrowingKnife_Loop|1921853220", "1921853220", "FarmHamlet_ThrowingKnife_Loop", "box_Delay_v5_16.TimeElapsed", "box_Random_23.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_MultipleOR_13_Out()
    local l0;
    l0 = self.box_MultipleOR_13;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Hamlets\\FarmHamlet\\FarmHamlet_Citizens.domino|@FarmHamlet_ThrowingKnife_Loop|1458867226", "1458867226", "FarmHamlet_ThrowingKnife_Loop", "box_MultipleOR_13.Out", "Thrower Will Shoot", l0:GetLuaBox(), self);
    self:Thrower_Will_Shoot();
end;

function export:f_box_MultipleOR_10_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_26();
    l0 = self.box_MultipleOR_10;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Hamlets\\FarmHamlet\\FarmHamlet_Citizens.domino|@FarmHamlet_ThrowingKnife_Loop|129320391", "129320391", "FarmHamlet_ThrowingKnife_Loop", "box_MultipleOR_10.Out", "box_OutputOrder_v2_26.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ProximityRadiusListener_v3_24_Enabled()
    local l0;
    l0 = self.box_ProximityRadiusListener_v3_24;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Hamlets\\FarmHamlet\\FarmHamlet_Citizens.domino|@FarmHamlet_ThrowingKnife_Loop|921533065", "921533065", "FarmHamlet_ThrowingKnife_Loop", "box_ProximityRadiusListener_v3_24.Enabled", "Enabled", l0:GetLuaBox(), self);
    self:Enabled();
end;

function export:f_box_ProximityRadiusListener_v3_24_SomeoneNear()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_41();
    l0 = self.box_ProximityRadiusListener_v3_24;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Hamlets\\FarmHamlet\\FarmHamlet_Citizens.domino|@FarmHamlet_ThrowingKnife_Loop|888761711", "888761711", "FarmHamlet_ThrowingKnife_Loop", "box_ProximityRadiusListener_v3_24.SomeoneNear", "box_OutputOrder_v2_41.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:OnEnter_box_Simple_Node_42()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_42");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Hamlets\\FarmHamlet\\FarmHamlet_Citizens.domino|@FarmHamlet_ThrowingKnife_Loop|@Come Back of the Thrower");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_42_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_43()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_43");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Hamlets\\FarmHamlet\\FarmHamlet_Citizens.domino|@FarmHamlet_ThrowingKnife_Loop|@WarningZone");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_43_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ContextualActionListener_30()
    local params;
    params = {
        -- ContextualAction,
        [0] = "2100181287028401157",
    };
    return params;
end;

function export:OnEnter_box_RandomFloat_v2_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RandomFloat_v2_2");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Hamlets\\FarmHamlet\\FarmHamlet_Citizens.domino|@FarmHamlet_ThrowingKnife_Loop|153765820");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RandomFloat_v2_2_Out,
    });
    params = {
        -- Max,
        [0] = 16,
        -- Min,
        [1] = 10,
    };
    return params;
end;

function export:OnEnter_box_RandomFloat_v2_28()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RandomFloat_v2_28");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Hamlets\\FarmHamlet\\FarmHamlet_Citizens.domino|@FarmHamlet_ThrowingKnife_Loop|231167230");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RandomFloat_v2_28_Out,
    });
    params = {
        -- Max,
        [0] = 5,
        -- Min,
        [1] = 3,
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_45()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_45");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Hamlets\\FarmHamlet\\FarmHamlet_Citizens.domino|@FarmHamlet_ThrowingKnife_Loop|286532235");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_45_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_29()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- Entities,
        [1] = self.gPlayer,
        -- farZone,
        [2] = 8,
        -- id2,
        [3] = "2100181287028401157",
        -- use2d,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_26()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_26");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Hamlets\\FarmHamlet\\FarmHamlet_Citizens.domino|@FarmHamlet_ThrowingKnife_Loop|391047808");
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
                [0] = self.f_box_OutputOrder_v2_26_Out_0,
                [1] = self.f_box_OutputOrder_v2_26_Out_1,
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
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Hamlets\\FarmHamlet\\FarmHamlet_Citizens.domino|@FarmHamlet_ThrowingKnife_Loop|461616634");
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
                [0] = self.f_box_OutputOrder_v2_5_Out_0,
                [1] = self.f_box_OutputOrder_v2_5_Out_1,
                [2] = self.f_box_OutputOrder_v2_5_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_31()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2100028194787732706",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_36()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_1");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Hamlets\\FarmHamlet\\FarmHamlet_Citizens.domino|@FarmHamlet_ThrowingKnife_Loop|679827042");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_UseContextualActionModifier_v3_1_Enabled,
        -- UseCalled,
        [4] = self.f_box_UseContextualActionModifier_v3_1_UseCalled,
    });
    params = {
        -- ContextualAction,
        [0] = "2100193054928416961",
        -- Entity,
        [1] = self.ThrowerNPC,
    };
    return params;
end;

function export:OnEnter_box_Random_33()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
        -- Probability,
        [1] = {
            connections = {
            },
            count = 2,
        },
    };
    return params;
end;

function export:OnEnter_box_RandomFloat_v2_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RandomFloat_v2_4");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Hamlets\\FarmHamlet\\FarmHamlet_Citizens.domino|@FarmHamlet_ThrowingKnife_Loop|740689305");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RandomFloat_v2_4_Out,
    });
    params = {
        -- Max,
        [0] = 8,
        -- Min,
        [1] = 3,
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_44()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_44");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Hamlets\\FarmHamlet\\FarmHamlet_Citizens.domino|@FarmHamlet_ThrowingKnife_Loop|852885641");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_44_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_27()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_27");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Hamlets\\FarmHamlet\\FarmHamlet_Citizens.domino|@FarmHamlet_ThrowingKnife_Loop|1079664229");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_UseContextualActionModifier_v3_27_Enabled,
        -- UseCalled,
        [4] = self.f_box_UseContextualActionModifier_v3_27_UseCalled,
    });
    params = {
        -- ContextualAction,
        [0] = "2100181287028401157",
        -- Entity,
        [1] = self.ThrowerNPC,
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_32()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2099933253820484280",
    };
    return params;
end;

function export:OnEnter_box_Random_39()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
        -- Probability,
        [1] = {
            connections = {
            },
            count = 2,
        },
    };
    return params;
end;

function export:OnEnter_box_Random_23()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
        -- Probability,
        [1] = {
            connections = {
            },
            count = 4,
        },
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_35()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_35");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Hamlets\\FarmHamlet\\FarmHamlet_Citizens.domino|@FarmHamlet_ThrowingKnife_Loop|1525655798");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UseContextualActionModifier_v3_35_Disabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2100181287028401157",
        -- Entity,
        [1] = self.ThrowerNPC,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_41()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_41");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Hamlets\\FarmHamlet\\FarmHamlet_Citizens.domino|@FarmHamlet_ThrowingKnife_Loop|1547164152");
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
                [0] = self.f_box_OutputOrder_v2_41_Out_0,
                [1] = self.f_box_OutputOrder_v2_41_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_21()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = l0:GetDataOutValue(0),
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = l0:GetDataOutValue(0),
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_8()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_8");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Hamlets\\FarmHamlet\\FarmHamlet_Citizens.domino|@FarmHamlet_ThrowingKnife_Loop|1686461893");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UseContextualActionModifier_v3_8_Disabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2100181287028401157",
        -- Entity,
        [1] = self.ThrowerNPC,
    };
    return params;
end;

function export:OnEnter_box_ContextualActionListener_14()
    local params;
    params = {
        -- ContextualAction,
        [0] = "2100181287028401157",
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_38()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_Random_20()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
        -- Probability,
        [1] = {
            connections = {
            },
            count = 3,
        },
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_16()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = l0:GetDataOutValue(0),
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_24()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- Entities,
        [1] = self.gPlayer,
        -- id2,
        [3] = "2100181287028401157",
        -- nearZone,
        [4] = 5,
        -- use2d,
        [5] = false,
    };
    return params;
end;

function export:OnExit_box_RandomFloat_v2_2_Out()
    local l0, l1;
    l0 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    l1 = self.box_Delay_v5_21;
    l1:GetLuaBox().seconds = l0:GetDataOutValue(0);
end;

function export:OnExit_box_RandomFloat_v2_28_Out()
    local l0, l1;
    l0 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    l1 = self.box_Delay_v5_16;
    l1:GetLuaBox().seconds = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetBoolean_v2_45_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    self.ThrowerIsSpecator = l0:GetDataOutValue(0);
end;

function export:OnExit_box_RandomFloat_v2_4_Out()
    local l0, l1;
    l0 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    l1 = self.box_Delay_v5_6;
    l1:GetLuaBox().seconds = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetBoolean_v2_44_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    self.ThrowerIsSpecator = l0:GetDataOutValue(0);
end;

-- Empty out anchor definitions
function export:Thrower_Will_Shoot()
    
end;
function export:Player_In_Mark()
    
end;
function export:Enabled()
    
end;
_compilerVersion = 60;
<DominoMetadata IsStateless="0" IsSystem="0">
	<ControlsIn>
		<ControlIn Name="Enable" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
	</ControlsIn>
	<ControlsOut>
		<ControlOut Name="Enabled" AnchorDynType="0" IsDelayed="0" />
		<ControlOut Name="Player_In_Mark" AnchorDynType="0" IsDelayed="0" />
		<ControlOut Name="Thrower_Will_Shoot" AnchorDynType="0" IsDelayed="0" />
	</ControlsOut>
	<DatasIn>
		<DataIn Name="gPlayer" AnchorDynType="0" DataTypeID="group" />
		<DataIn Name="ThrowerNPC" AnchorDynType="0" DataTypeID="entity" />
	</DatasIn>
	<DatasOut>
		<DataOut Name="ThrowerIsSpecator" AnchorDynType="0" DataTypeID="bool" />
	</DatasOut>
</DominoMetadata>
