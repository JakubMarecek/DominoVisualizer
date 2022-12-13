LUACPl -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/bowmore_main/bowmore_activities/specialists/mis_400/mis_400_b10.domino
-- User graph: RetrieveObjective_manager
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
        cboxRes:RegisterBox("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua");
        cboxRes:RegisterBox("Domino/System/Activity/AddActivityObjective_v2.lua");
        cboxRes:RegisterBox("Domino/System/Activity/AddActivityObjectiveProgress_v2.lua");
        cboxRes:RegisterBox("Domino/System/Activity/SetActivityObjectiveProgress_v2.lua");
        cboxRes:RegisterBox("Domino/System/CompareBoolean.lua");
        cboxRes:RegisterBox("Domino/System/CompareIntegers.lua");
        cboxRes:RegisterBox("Domino/System/EntityStatusListener.lua");
        cboxRes:RegisterBox("Domino/System/Gate_v3.lua");
        cboxRes:RegisterBox("Domino/System/IntegerArithmetics_v2.lua");
        cboxRes:RegisterBox("Domino/System/LookAtTrigger_v2.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/PickupListener_v2.lua");
        cboxRes:RegisterBox("Domino/System/Print_v2.lua");
        cboxRes:RegisterBox("Domino/System/SetBoolean_v2.lua");
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
    metadataTable[GetPathID("Domino/user/Bowmore_main/Bowmore_Activities/Specialists/MIS_400/MIS_400_B10.RetrieveObjective_manager.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "In",
            },
            [1] = {
                name = "SawLauncherPickedup",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "2objOff3",
                delayed = true,
            },
            [1] = {
                name = "Interacted",
                delayed = true,
            },
            [2] = {
                name = "Interacted3Time",
                delayed = true,
            },
            [3] = {
                name = "Out",
                delayed = false,
            },
        },
        controlOutCount = 4,
        dataIn = {
        },
        dataInCount = 0,
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
    metadataTable[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")] = {
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
                name = "CompletePreviousObjective",
                type = "bool",
            },
            [1] = {
                name = "ObjectiveId",
                type = "oasis",
            },
            [2] = {
                name = "TargetGroup",
                type = "group",
            },
            [3] = {
                name = "Time",
                type = "float",
            },
        },
        dataInCount = 4,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/Activity/AddActivityObjectiveProgress_v2.lua")] = {
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
                name = "MarkerTypeId",
                type = "database",
            },
            [1] = {
                name = "ObjectiveId",
                type = "oasis",
            },
            [2] = {
                name = "ProgressDisplayType",
                type = "int",
            },
            [3] = {
                name = "TotalProgress",
                type = "int",
            },
        },
        dataInCount = 4,
        dataOut = {
            [0] = {
                name = "ProgressId",
                type = "int",
            },
        },
        dataOutCount = 1,
    };
    metadataTable[GetPathID("Domino/System/Activity/SetActivityObjectiveProgress_v2.lua")] = {
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
                name = "ObjectiveId",
                type = "oasis",
            },
            [1] = {
                name = "Progress",
                type = "int",
            },
            [2] = {
                name = "ProgressId",
                type = "int",
            },
        },
        dataInCount = 3,
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
    metadataTable[GetPathID("Domino/System/CompareIntegers.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "In",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "A_eq_B",
                delayed = false,
            },
            [1] = {
                name = "A_ge_B",
                delayed = false,
            },
            [2] = {
                name = "A_gt_B",
                delayed = false,
            },
            [3] = {
                name = "A_le_B",
                delayed = false,
            },
            [4] = {
                name = "A_lt_B",
                delayed = false,
            },
            [5] = {
                name = "A_ne_B",
                delayed = false,
            },
        },
        controlOutCount = 6,
        dataIn = {
            [0] = {
                name = "A",
                type = "int",
            },
            [1] = {
                name = "B",
                type = "int",
            },
        },
        dataInCount = 2,
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
    metadataTable[GetPathID("Domino/System/IntegerArithmetics_v2.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "Abs",
            },
            [1] = {
                name = "Add",
            },
            [2] = {
                name = "Div",
            },
            [3] = {
                name = "Exp",
            },
            [4] = {
                name = "Max",
            },
            [5] = {
                name = "Min",
            },
            [6] = {
                name = "Mod",
            },
            [7] = {
                name = "Mul",
            },
            [8] = {
                name = "Sub",
            },
        },
        controlInCount = 9,
        controlOut = {
            [0] = {
                name = "Out",
                delayed = false,
            },
        },
        controlOutCount = 1,
        dataIn = {
            [0] = {
                name = "A",
                type = "int",
            },
            [1] = {
                name = "B",
                type = "int",
            },
        },
        dataInCount = 2,
        dataOut = {
            [0] = {
                name = "Result",
                type = "int",
            },
        },
        dataOutCount = 1,
    };
    metadataTable[GetPathID("Domino/System/LookAtTrigger_v2.lua")] = {
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
                name = "EnterFOV",
                delayed = true,
            },
            [3] = {
                name = "LeaveFOV",
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
                name = "pawns",
                type = "group",
            },
            [2] = {
                name = "triggerId",
                type = "entity",
            },
        },
        dataInCount = 3,
        dataOut = {
            [0] = {
                name = "LookingPawn",
                type = "entity",
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
    metadataTable[GetPathID("Domino/System/PickupListener_v2.lua")] = {
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
                name = "PickedUp",
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
                name = "pickupId",
                type = "group",
            },
        },
        dataInCount = 2,
        dataOut = {
            [0] = {
                name = "InstigatorId",
                type = "entity",
            },
            [1] = {
                name = "PickedUpId",
                type = "entity",
            },
        },
        dataOutCount = 2,
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
end;

function export:Init(cbox)
    local l0;
    self._name = "RetrieveObjective_manager";
    self._elementPathId = "DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_400\\MIS_400_B10.domino|@RetrieveObjective_manager";
    self.Interacted = DummyFunction;
    self.Interacted3Time = DummyFunction;
    self.Out = DummyFunction;
    self._2objOff3 = DummyFunction;
    self.iTotalInteraction = 0;
    self.bSawLauncherPickedup = false;
    self.iProgress = 0;
    self.box_LookAtTrigger_v2_34 = cbox:CreateBox("Domino/System/LookAtTrigger_v2.lua");
    l0 = self.box_LookAtTrigger_v2_34;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_LookAtTrigger_v2_34");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_400\\MIS_400_B10.domino|@RetrieveObjective_manager|56924908");
    l0:SetConnections({
        -- EnterFOV,
        [2] = self.f_box_LookAtTrigger_v2_34_EnterFOV,
    });
    self.box_MultipleOR_14 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_14;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_14");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_400\\MIS_400_B10.domino|@RetrieveObjective_manager|299110749");
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
        [0] = self.f_box_MultipleOR_14_Out,
    });
    self.box_PickupListener_v2_48 = cbox:CreateBox("Domino/System/PickupListener_v2.lua");
    l0 = self.box_PickupListener_v2_48;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PickupListener_v2_48");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_400\\MIS_400_B10.domino|@RetrieveObjective_manager|403142330");
    l0:SetConnections({
        -- PickedUp,
        [2] = self.f_box_PickupListener_v2_48_PickedUp,
    });
    self.box_LookAtTrigger_v2_41 = cbox:CreateBox("Domino/System/LookAtTrigger_v2.lua");
    l0 = self.box_LookAtTrigger_v2_41;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_LookAtTrigger_v2_41");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_400\\MIS_400_B10.domino|@RetrieveObjective_manager|927797475");
    l0:SetConnections({
        -- EnterFOV,
        [2] = self.f_box_LookAtTrigger_v2_41_EnterFOV,
    });
    self.box_Gate_v3_37 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_37;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_37");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_400\\MIS_400_B10.domino|@RetrieveObjective_manager|1106159240");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_37_Out,
    });
    self.box_EntityStatusListener_13 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_13;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_13");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_400\\MIS_400_B10.domino|@RetrieveObjective_manager|1143877523");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_EntityStatusListener_13_Disabled,
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_13_Loaded,
    });
    self.box_EntityStatusListener_12 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_12;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_12");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_400\\MIS_400_B10.domino|@RetrieveObjective_manager|1182602167");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_EntityStatusListener_12_Disabled,
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_12_Loaded,
    });
    self.box_PickupListener_v2_22 = cbox:CreateBox("Domino/System/PickupListener_v2.lua");
    l0 = self.box_PickupListener_v2_22;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PickupListener_v2_22");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_400\\MIS_400_B10.domino|@RetrieveObjective_manager|1234054166");
    l0:SetConnections({
        -- PickedUp,
        [2] = self.f_box_PickupListener_v2_22_PickedUp,
    });
    self.box_Gate_v3_36 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_36;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_36");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_400\\MIS_400_B10.domino|@RetrieveObjective_manager|1487793681");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_36_Out,
    });
    self.box_EntityStatusListener_11 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_11;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_11");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_400\\MIS_400_B10.domino|@RetrieveObjective_manager|1612617184");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_EntityStatusListener_11_Disabled,
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_11_Loaded,
    });
    self.box_Gate_v3_30 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_30;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_30");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_400\\MIS_400_B10.domino|@RetrieveObjective_manager|1770590436");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_30_Out,
    });
    self.box_PickupListener_v2_49 = cbox:CreateBox("Domino/System/PickupListener_v2.lua");
    l0 = self.box_PickupListener_v2_49;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PickupListener_v2_49");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_400\\MIS_400_B10.domino|@RetrieveObjective_manager|1788400087");
    l0:SetConnections({
        -- PickedUp,
        [2] = self.f_box_PickupListener_v2_49_PickedUp,
    });
    self.box_LookAtTrigger_v2_39 = cbox:CreateBox("Domino/System/LookAtTrigger_v2.lua");
    l0 = self.box_LookAtTrigger_v2_39;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_LookAtTrigger_v2_39");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_400\\MIS_400_B10.domino|@RetrieveObjective_manager|2083231547");
    l0:SetConnections({
        -- EnterFOV,
        [2] = self.f_box_LookAtTrigger_v2_39_EnterFOV,
    });
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_OutputOrder_v2_28();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_400\\MIS_400_B10.domino|@RetrieveObjective_manager|347017959", "347017959", "RetrieveObjective_manager", "In", "box_OutputOrder_v2_28.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:SawLauncherPickedup()
    local params, l0;
    params = self:OnEnter_box_SetBoolean_v2_50();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_400\\MIS_400_B10.domino|@RetrieveObjective_manager|1596640105", "1596640105", "RetrieveObjective_manager", "SawLauncherPickedup", "box_SetBoolean_v2_50.True", self, l0:GetLuaBox());
    -- True
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_1_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IntegerArithmetics_v2_16();
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_400\\MIS_400_B10.domino|@RetrieveObjective_manager|774802329", "774802329", "RetrieveObjective_manager", "box_OutputOrder_v2_1.Out", "box_IntegerArithmetics_v2_16.Add", clone:GetLuaBox(), l0:GetLuaBox());
    -- Add
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_1_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_5();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_400\\MIS_400_B10.domino|@RetrieveObjective_manager|1875336096", "1875336096", "RetrieveObjective_manager", "box_OutputOrder_v2_1.Out", "box_Print_v2_5.ToAll", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToAll
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_LookAtTrigger_v2_34_EnterFOV()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_33();
    l0 = self.box_LookAtTrigger_v2_34;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_400\\MIS_400_B10.domino|@RetrieveObjective_manager|613714501", "613714501", "RetrieveObjective_manager", "box_LookAtTrigger_v2_34.EnterFOV", "box_ActivityObjectiveMarkerModifier_v3_33.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_43_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_37();
    l0 = self.box_Gate_v3_37;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_400\\MIS_400_B10.domino|@RetrieveObjective_manager|1345459883", "1345459883", "RetrieveObjective_manager", "box_OutputOrder_v2_43.Out", "box_Gate_v3_37.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_43_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_AddActivityObjectiveProgress_v2_25();
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjectiveProgress_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_400\\MIS_400_B10.domino|@RetrieveObjective_manager|1015192678", "1015192678", "RetrieveObjective_manager", "box_OutputOrder_v2_43.Out", "box_AddActivityObjectiveProgress_v2_25.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetBoolean_v2_50_Out()
    local params, l0;
    self:OnExit_box_SetBoolean_v2_50_Out();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_AddActivityObjective_v2_17();
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_400\\MIS_400_B10.domino|@RetrieveObjective_manager|1470229677", "1470229677", "RetrieveObjective_manager", "box_SetBoolean_v2_50.Out", "box_AddActivityObjective_v2_17.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_45_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_36();
    l0 = self.box_Gate_v3_36;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_400\\MIS_400_B10.domino|@RetrieveObjective_manager|2046373810", "2046373810", "RetrieveObjective_manager", "box_OutputOrder_v2_45.Out", "box_Gate_v3_36.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_45_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_LookAtTrigger_v2_41();
    l0 = self.box_LookAtTrigger_v2_41;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_400\\MIS_400_B10.domino|@RetrieveObjective_manager|208997798", "208997798", "RetrieveObjective_manager", "box_OutputOrder_v2_45.Out", "box_LookAtTrigger_v2_41.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_Compare_Integers_8_A_eq_B()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_400\\MIS_400_B10.domino|@RetrieveObjective_manager|11233285", "11233285", "RetrieveObjective_manager", "box_Compare_Integers_8.A_eq_B", "2objOff3", clone:GetLuaBox(), self);
    self:_2objOff3();
end;

function export:f_box_MultipleOR_14_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SetActivityObjectiveProgress_v2_6();
    l0 = self.box_MultipleOR_14;
    l1 = Boxes[GetPathID("Domino/System/Activity/SetActivityObjectiveProgress_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_400\\MIS_400_B10.domino|@RetrieveObjective_manager|2055777482", "2055777482", "RetrieveObjective_manager", "box_MultipleOR_14.Out", "box_SetActivityObjectiveProgress_v2_6.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SetActivityObjectiveProgress_v2_6_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityObjectiveProgress_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_10();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_400\\MIS_400_B10.domino|@RetrieveObjective_manager|717736302", "717736302", "RetrieveObjective_manager", "box_SetActivityObjectiveProgress_v2_6.Out", "box_OutputOrder_v2_10.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_PickupListener_v2_48_PickedUp()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_40();
    l0 = self.box_PickupListener_v2_48;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_400\\MIS_400_B10.domino|@RetrieveObjective_manager|1909521502", "1909521502", "RetrieveObjective_manager", "box_PickupListener_v2_48.PickedUp", "box_OutputOrder_v2_40.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ActivityObjectiveMarkerModifier_v3_15_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_43();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_400\\MIS_400_B10.domino|@RetrieveObjective_manager|387384912", "387384912", "RetrieveObjective_manager", "box_ActivityObjectiveMarkerModifier_v3_15.Enabled", "box_OutputOrder_v2_43.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_AddActivityObjectiveProgress_v2_25_Out()
    local params, l0;
    self:OnExit_box_AddActivityObjectiveProgress_v2_25_Out();
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjectiveProgress_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetActivityObjectiveProgress_v2_26();
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityObjectiveProgress_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_400\\MIS_400_B10.domino|@RetrieveObjective_manager|1445234059", "1445234059", "RetrieveObjective_manager", "box_AddActivityObjectiveProgress_v2_25.Out", "box_SetActivityObjectiveProgress_v2_26.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_40_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_1();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_400\\MIS_400_B10.domino|@RetrieveObjective_manager|140229760", "140229760", "RetrieveObjective_manager", "box_OutputOrder_v2_40.Out", "box_OutputOrder_v2_1.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_40_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_36();
    l0 = self.box_Gate_v3_36;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_400\\MIS_400_B10.domino|@RetrieveObjective_manager|1467950100", "1467950100", "RetrieveObjective_manager", "box_OutputOrder_v2_40.Out", "box_Gate_v3_36.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_40_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_38();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_400\\MIS_400_B10.domino|@RetrieveObjective_manager|1288572895", "1288572895", "RetrieveObjective_manager", "box_OutputOrder_v2_40.Out", "box_ActivityObjectiveMarkerModifier_v3_38.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_28_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_11();
    l0 = self.box_EntityStatusListener_11;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_400\\MIS_400_B10.domino|@RetrieveObjective_manager|971070954", "971070954", "RetrieveObjective_manager", "box_OutputOrder_v2_28.Out", "box_EntityStatusListener_11.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_28_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_12();
    l0 = self.box_EntityStatusListener_12;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_400\\MIS_400_B10.domino|@RetrieveObjective_manager|1274843058", "1274843058", "RetrieveObjective_manager", "box_OutputOrder_v2_28.Out", "box_EntityStatusListener_12.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_28_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_13();
    l0 = self.box_EntityStatusListener_13;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_400\\MIS_400_B10.domino|@RetrieveObjective_manager|1528118678", "1528118678", "RetrieveObjective_manager", "box_OutputOrder_v2_28.Out", "box_EntityStatusListener_13.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_28_Out_3()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_400\\MIS_400_B10.domino|@RetrieveObjective_manager|121242524", "121242524", "RetrieveObjective_manager", "box_OutputOrder_v2_28.Out", "Out", clone:GetLuaBox(), self);
    self:Out();
end;

function export:f_box_IntegerArithmetics_v2_16_Out()
    local params, l0;
    self:OnExit_box_IntegerArithmetics_v2_16_Out();
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Boolean_23();
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_400\\MIS_400_B10.domino|@RetrieveObjective_manager|1686573656", "1686573656", "RetrieveObjective_manager", "box_IntegerArithmetics_v2_16.Out", "box_Compare_Boolean_23.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_35_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_3();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_400\\MIS_400_B10.domino|@RetrieveObjective_manager|445456717", "445456717", "RetrieveObjective_manager", "box_OutputOrder_v2_35.Out", "box_OutputOrder_v2_3.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_35_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_30();
    l0 = self.box_Gate_v3_30;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_400\\MIS_400_B10.domino|@RetrieveObjective_manager|1198239978", "1198239978", "RetrieveObjective_manager", "box_OutputOrder_v2_35.Out", "box_Gate_v3_30.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_35_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_33();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_400\\MIS_400_B10.domino|@RetrieveObjective_manager|1929951012", "1929951012", "RetrieveObjective_manager", "box_OutputOrder_v2_35.Out", "box_ActivityObjectiveMarkerModifier_v3_33.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_46_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_30();
    l0 = self.box_Gate_v3_30;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_400\\MIS_400_B10.domino|@RetrieveObjective_manager|1568759604", "1568759604", "RetrieveObjective_manager", "box_OutputOrder_v2_46.Out", "box_Gate_v3_30.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_46_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_LookAtTrigger_v2_39();
    l0 = self.box_LookAtTrigger_v2_39;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_400\\MIS_400_B10.domino|@RetrieveObjective_manager|1245262652", "1245262652", "RetrieveObjective_manager", "box_OutputOrder_v2_46.Out", "box_LookAtTrigger_v2_39.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_LookAtTrigger_v2_41_EnterFOV()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_42();
    l0 = self.box_LookAtTrigger_v2_41;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_400\\MIS_400_B10.domino|@RetrieveObjective_manager|2098763411", "2098763411", "RetrieveObjective_manager", "box_LookAtTrigger_v2_41.EnterFOV", "box_ActivityObjectiveMarkerModifier_v3_42.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_AddActivityObjective_v2_17_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_15();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_400\\MIS_400_B10.domino|@RetrieveObjective_manager|1498265928", "1498265928", "RetrieveObjective_manager", "box_AddActivityObjective_v2_17.Out", "box_ActivityObjectiveMarkerModifier_v3_15.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_10_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Integers_9();
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_400\\MIS_400_B10.domino|@RetrieveObjective_manager|638128468", "638128468", "RetrieveObjective_manager", "box_OutputOrder_v2_10.Out", "box_Compare_Integers_9.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_10_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Integers_8();
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_400\\MIS_400_B10.domino|@RetrieveObjective_manager|718667053", "718667053", "RetrieveObjective_manager", "box_OutputOrder_v2_10.Out", "box_Compare_Integers_8.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_10_Out_2()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_400\\MIS_400_B10.domino|@RetrieveObjective_manager|629778221", "629778221", "RetrieveObjective_manager", "box_OutputOrder_v2_10.Out", "Interacted", clone:GetLuaBox(), self);
    self:Interacted();
end;

function export:f_box_Compare_Boolean_24_A_is_True()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_14;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_400\\MIS_400_B10.domino|@RetrieveObjective_manager|2006333673", "2006333673", "RetrieveObjective_manager", "box_Compare_Boolean_24.A_is_True", "box_MultipleOR_14.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_Gate_v3_37_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_45();
    l0 = self.box_Gate_v3_37;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_400\\MIS_400_B10.domino|@RetrieveObjective_manager|699502765", "699502765", "RetrieveObjective_manager", "box_Gate_v3_37.Out", "box_OutputOrder_v2_45.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Compare_Boolean_23_A_is_True()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_14;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_400\\MIS_400_B10.domino|@RetrieveObjective_manager|865760260", "865760260", "RetrieveObjective_manager", "box_Compare_Boolean_23.A_is_True", "box_MultipleOR_14.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_EntityStatusListener_13_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_PickupListener_v2_49();
    l0 = self.box_EntityStatusListener_13;
    l1 = self.box_PickupListener_v2_49;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_400\\MIS_400_B10.domino|@RetrieveObjective_manager|659207828", "659207828", "RetrieveObjective_manager", "box_EntityStatusListener_13.Disabled", "box_PickupListener_v2_49.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_EntityStatusListener_13_Loaded()
    local params, l0;
    params = self:OnEnter_box_EntityStatusListener_13();
    l0 = self.box_EntityStatusListener_13;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_400\\MIS_400_B10.domino|@RetrieveObjective_manager|1781661124", "1781661124", "RetrieveObjective_manager", "box_EntityStatusListener_13.Loaded", "box_EntityStatusListener_13.Disable", l0:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_EntityStatusListener_12_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_PickupListener_v2_48();
    l0 = self.box_EntityStatusListener_12;
    l1 = self.box_PickupListener_v2_48;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_400\\MIS_400_B10.domino|@RetrieveObjective_manager|518328883", "518328883", "RetrieveObjective_manager", "box_EntityStatusListener_12.Disabled", "box_PickupListener_v2_48.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_EntityStatusListener_12_Loaded()
    local params, l0;
    params = self:OnEnter_box_EntityStatusListener_12();
    l0 = self.box_EntityStatusListener_12;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_400\\MIS_400_B10.domino|@RetrieveObjective_manager|237577553", "237577553", "RetrieveObjective_manager", "box_EntityStatusListener_12.Loaded", "box_EntityStatusListener_12.Disable", l0:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_PickupListener_v2_22_PickedUp()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_35();
    l0 = self.box_PickupListener_v2_22;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_400\\MIS_400_B10.domino|@RetrieveObjective_manager|1099443572", "1099443572", "RetrieveObjective_manager", "box_PickupListener_v2_22.PickedUp", "box_OutputOrder_v2_35.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Compare_Boolean_21_A_is_True()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_14;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_400\\MIS_400_B10.domino|@RetrieveObjective_manager|2095222505", "2095222505", "RetrieveObjective_manager", "box_Compare_Boolean_21.A_is_True", "box_MultipleOR_14.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_SetActivityObjectiveProgress_v2_26_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityObjectiveProgress_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Integers_27();
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_400\\MIS_400_B10.domino|@RetrieveObjective_manager|678380809", "678380809", "RetrieveObjective_manager", "box_SetActivityObjectiveProgress_v2_26.Out", "box_Compare_Integers_27.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_7_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IntegerArithmetics_v2_20();
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_400\\MIS_400_B10.domino|@RetrieveObjective_manager|92876582", "92876582", "RetrieveObjective_manager", "box_OutputOrder_v2_7.Out", "box_IntegerArithmetics_v2_20.Add", clone:GetLuaBox(), l0:GetLuaBox());
    -- Add
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_7_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_2();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_400\\MIS_400_B10.domino|@RetrieveObjective_manager|520003068", "520003068", "RetrieveObjective_manager", "box_OutputOrder_v2_7.Out", "box_Print_v2_2.ToAll", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToAll
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Gate_v3_36_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_46();
    l0 = self.box_Gate_v3_36;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_400\\MIS_400_B10.domino|@RetrieveObjective_manager|531666011", "531666011", "RetrieveObjective_manager", "box_Gate_v3_36.Out", "box_OutputOrder_v2_46.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_IntegerArithmetics_v2_20_Out()
    local params, l0;
    self:OnExit_box_IntegerArithmetics_v2_20_Out();
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Boolean_24();
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_400\\MIS_400_B10.domino|@RetrieveObjective_manager|2070779367", "2070779367", "RetrieveObjective_manager", "box_IntegerArithmetics_v2_20.Out", "box_Compare_Boolean_24.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Integers_27_A_le_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_18();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_400\\MIS_400_B10.domino|@RetrieveObjective_manager|44113979", "44113979", "RetrieveObjective_manager", "box_Compare_Integers_27.A_le_B", "box_OutputOrder_v2_18.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_11_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_PickupListener_v2_22();
    l0 = self.box_EntityStatusListener_11;
    l1 = self.box_PickupListener_v2_22;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_400\\MIS_400_B10.domino|@RetrieveObjective_manager|378943567", "378943567", "RetrieveObjective_manager", "box_EntityStatusListener_11.Disabled", "box_PickupListener_v2_22.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_EntityStatusListener_11_Loaded()
    local params, l0;
    params = self:OnEnter_box_EntityStatusListener_11();
    l0 = self.box_EntityStatusListener_11;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_400\\MIS_400_B10.domino|@RetrieveObjective_manager|1994706389", "1994706389", "RetrieveObjective_manager", "box_EntityStatusListener_11.Loaded", "box_EntityStatusListener_11.Disable", l0:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_44_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_7();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_400\\MIS_400_B10.domino|@RetrieveObjective_manager|1322406804", "1322406804", "RetrieveObjective_manager", "box_OutputOrder_v2_44.Out", "box_OutputOrder_v2_7.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_44_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_37();
    l0 = self.box_Gate_v3_37;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_400\\MIS_400_B10.domino|@RetrieveObjective_manager|1232429966", "1232429966", "RetrieveObjective_manager", "box_OutputOrder_v2_44.Out", "box_Gate_v3_37.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_44_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_42();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_400\\MIS_400_B10.domino|@RetrieveObjective_manager|258301291", "258301291", "RetrieveObjective_manager", "box_OutputOrder_v2_44.Out", "box_ActivityObjectiveMarkerModifier_v3_42.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Gate_v3_30_Out()
    local params, l0, l1;
    params = self:OnEnter_box_LookAtTrigger_v2_34();
    l0 = self.box_Gate_v3_30;
    l1 = self.box_LookAtTrigger_v2_34;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_400\\MIS_400_B10.domino|@RetrieveObjective_manager|2145795597", "2145795597", "RetrieveObjective_manager", "box_Gate_v3_30.Out", "box_LookAtTrigger_v2_34.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_PickupListener_v2_49_PickedUp()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_44();
    l0 = self.box_PickupListener_v2_49;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_400\\MIS_400_B10.domino|@RetrieveObjective_manager|1214243404", "1214243404", "RetrieveObjective_manager", "box_PickupListener_v2_49.PickedUp", "box_OutputOrder_v2_44.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_3_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IntegerArithmetics_v2_19();
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_400\\MIS_400_B10.domino|@RetrieveObjective_manager|1286034743", "1286034743", "RetrieveObjective_manager", "box_OutputOrder_v2_3.Out", "box_IntegerArithmetics_v2_19.Add", clone:GetLuaBox(), l0:GetLuaBox());
    -- Add
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_3_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_4();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_400\\MIS_400_B10.domino|@RetrieveObjective_manager|781788100", "781788100", "RetrieveObjective_manager", "box_OutputOrder_v2_3.Out", "box_Print_v2_4.ToAll", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToAll
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_18_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_15();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_400\\MIS_400_B10.domino|@RetrieveObjective_manager|1658099343", "1658099343", "RetrieveObjective_manager", "box_OutputOrder_v2_18.Out", "box_ActivityObjectiveMarkerModifier_v3_15.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_18_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_400\\MIS_400_B10.domino|@RetrieveObjective_manager|1830847233", "1830847233", "RetrieveObjective_manager", "box_OutputOrder_v2_18.Out", "Interacted3Time", clone:GetLuaBox(), self);
    self:Interacted3Time();
end;

function export:f_box_IntegerArithmetics_v2_19_Out()
    local params, l0;
    self:OnExit_box_IntegerArithmetics_v2_19_Out();
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Boolean_21();
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_400\\MIS_400_B10.domino|@RetrieveObjective_manager|902031975", "902031975", "RetrieveObjective_manager", "box_IntegerArithmetics_v2_19.Out", "box_Compare_Boolean_21.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_LookAtTrigger_v2_39_EnterFOV()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_38();
    l0 = self.box_LookAtTrigger_v2_39;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_400\\MIS_400_B10.domino|@RetrieveObjective_manager|1411334412", "1411334412", "RetrieveObjective_manager", "box_LookAtTrigger_v2_39.EnterFOV", "box_ActivityObjectiveMarkerModifier_v3_38.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Compare_Integers_9_A_le_B()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_400\\MIS_400_B10.domino|@RetrieveObjective_manager|1451869977", "1451869977", "RetrieveObjective_manager", "box_Compare_Integers_9.A_le_B", "Interacted3Time", clone:GetLuaBox(), self);
    self:Interacted3Time();
end;

function export:OnEnter_box_OutputOrder_v2_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_1");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_400\\MIS_400_B10.domino|@RetrieveObjective_manager|4274401");
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
                [0] = self.f_box_OutputOrder_v2_1_Out_0,
                [1] = self.f_box_OutputOrder_v2_1_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_LookAtTrigger_v2_34()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- pawns,
        [1] = "#ED455357",
        -- triggerId,
        [2] = "2109456167429217850",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_43()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_43");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_400\\MIS_400_B10.domino|@RetrieveObjective_manager|61744546");
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
                [0] = self.f_box_OutputOrder_v2_43_Out_0,
                [1] = self.f_box_OutputOrder_v2_43_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_50()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_50");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_400\\MIS_400_B10.domino|@RetrieveObjective_manager|113630431");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_50_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_45()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_45");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_400\\MIS_400_B10.domino|@RetrieveObjective_manager|250262054");
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
                [0] = self.f_box_OutputOrder_v2_45_Out_0,
                [1] = self.f_box_OutputOrder_v2_45_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ActivityObjectiveMarkerModifier_v3_42()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityObjectiveMarkerModifier_v3_42");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_400\\MIS_400_B10.domino|@RetrieveObjective_manager|265137493");
    l0:SetConnections({
    });
    params = {
        -- Marker,
        [1] = "2108459452058311946",
        -- ObjectiveId,
        [2] = {
            section = "Objectives",
            item = "MIS_400_OBJ_B10_PickupStolenRessources",
            id = "1001254",
        },
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_8()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_8");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_400\\MIS_400_B10.domino|@RetrieveObjective_manager|266829819");
    l0:SetConnections({
        -- A_eq_B,
        [0] = self.f_box_Compare_Integers_8_A_eq_B,
    });
    params = {
        -- A,
        [0] = 2,
        -- B,
        [1] = self.iTotalInteraction,
    };
    return params;
end;

function export:OnEnter_box_Print_v2_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_4");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_400\\MIS_400_B10.domino|@RetrieveObjective_manager|296011184");
    l0:SetConnections({
    });
    params = {
        -- color,
        [1] = "white",
        -- duration,
        [3] = 5,
        -- int,
        [6] = self.iTotalInteraction,
        -- path,
        [7] = "C:\\Print.log",
        -- str,
        [8] = "Pickedup:",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_SetActivityObjectiveProgress_v2_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityObjectiveProgress_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetActivityObjectiveProgress_v2_6");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_400\\MIS_400_B10.domino|@RetrieveObjective_manager|389566545");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetActivityObjectiveProgress_v2_6_Out,
    });
    params = {
        -- ObjectiveId,
        [0] = {
            section = "Objectives",
            item = "MIS_400_OBJ_B10_PickupStolenRessources",
            id = "1001254",
        },
        -- Progress,
        [1] = self.iTotalInteraction,
        -- ProgressId,
        [2] = self.iProgress,
    };
    return params;
end;

function export:OnEnter_box_PickupListener_v2_48()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- pickupId,
        [1] = "2109469964609005197",
    };
    return params;
end;

function export:OnEnter_box_ActivityObjectiveMarkerModifier_v3_15()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityObjectiveMarkerModifier_v3_15");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_400\\MIS_400_B10.domino|@RetrieveObjective_manager|404299260");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_ActivityObjectiveMarkerModifier_v3_15_Enabled,
    });
    params = {
        -- Marker,
        [1] = "2108459626222594006",
        -- ObjectiveId,
        [2] = {
            section = "Objectives",
            item = "MIS_400_OBJ_B10_PickupStolenRessources",
            id = "1001254",
        },
    };
    return params;
end;

function export:OnEnter_box_AddActivityObjectiveProgress_v2_25()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjectiveProgress_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_AddActivityObjectiveProgress_v2_25");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_400\\MIS_400_B10.domino|@RetrieveObjective_manager|405401941");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_AddActivityObjectiveProgress_v2_25_Out,
    });
    params = {
        -- MarkerTypeId,
        [0] = nil,
        -- ObjectiveId,
        [1] = {
            section = "Objectives",
            item = "MIS_400_OBJ_B10_PickupStolenRessources",
            id = "1001254",
        },
        -- ProgressDisplayType,
        [2] = 0,
        -- TotalProgress,
        [3] = 3,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_40()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_40");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_400\\MIS_400_B10.domino|@RetrieveObjective_manager|491601651");
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
                [0] = self.f_box_OutputOrder_v2_40_Out_0,
                [1] = self.f_box_OutputOrder_v2_40_Out_1,
                [2] = self.f_box_OutputOrder_v2_40_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ActivityObjectiveMarkerModifier_v3_33()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityObjectiveMarkerModifier_v3_33");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_400\\MIS_400_B10.domino|@RetrieveObjective_manager|509488180");
    l0:SetConnections({
    });
    params = {
        -- Marker,
        [1] = "2108459718782497279",
        -- ObjectiveId,
        [2] = {
            section = "Objectives",
            item = "MIS_400_OBJ_B10_PickupStolenRessources",
            id = "1001254",
        },
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_28()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_28");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_400\\MIS_400_B10.domino|@RetrieveObjective_manager|516435954");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
            [0] = 4,
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
                [0] = self.f_box_OutputOrder_v2_28_Out_0,
                [1] = self.f_box_OutputOrder_v2_28_Out_1,
                [2] = self.f_box_OutputOrder_v2_28_Out_2,
                [3] = self.f_box_OutputOrder_v2_28_Out_3,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_IntegerArithmetics_v2_16()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IntegerArithmetics_v2_16");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_400\\MIS_400_B10.domino|@RetrieveObjective_manager|728112321");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_IntegerArithmetics_v2_16_Out,
    });
    params = {
        -- A,
        [0] = 1,
        -- B,
        [1] = self.iTotalInteraction,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_35()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_35");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_400\\MIS_400_B10.domino|@RetrieveObjective_manager|796828608");
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
                [0] = self.f_box_OutputOrder_v2_35_Out_0,
                [1] = self.f_box_OutputOrder_v2_35_Out_1,
                [2] = self.f_box_OutputOrder_v2_35_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_46()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_46");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_400\\MIS_400_B10.domino|@RetrieveObjective_manager|798231676");
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
                [0] = self.f_box_OutputOrder_v2_46_Out_0,
                [1] = self.f_box_OutputOrder_v2_46_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_LookAtTrigger_v2_41()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- pawns,
        [1] = "#ED455357",
        -- triggerId,
        [2] = "2109456273842904642",
    };
    return params;
end;

function export:OnEnter_box_AddActivityObjective_v2_17()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_AddActivityObjective_v2_17");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_400\\MIS_400_B10.domino|@RetrieveObjective_manager|966319176");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_AddActivityObjective_v2_17_Out,
    });
    params = {
        -- CompletePreviousObjective,
        [0] = false,
        -- ObjectiveId,
        [1] = {
            section = "Objectives",
            item = "MIS_400_OBJ_B10_PickupStolenRessources",
            id = "1001254",
        },
        -- TargetGroup,
        [2] = "#ED455357",
        -- Time,
        [3] = 0,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_10()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_10");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_400\\MIS_400_B10.domino|@RetrieveObjective_manager|989500359");
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
                [0] = self.f_box_OutputOrder_v2_10_Out_0,
                [1] = self.f_box_OutputOrder_v2_10_Out_1,
                [2] = self.f_box_OutputOrder_v2_10_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_24()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_24");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_400\\MIS_400_B10.domino|@RetrieveObjective_manager|1062884538");
    l0:SetConnections({
        -- A_is_True,
        [2] = self.f_box_Compare_Boolean_24_A_is_True,
    });
    params = {
        -- A,
        [0] = self.bSawLauncherPickedup,
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_37()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_23()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_23");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_400\\MIS_400_B10.domino|@RetrieveObjective_manager|1111281315");
    l0:SetConnections({
        -- A_is_True,
        [2] = self.f_box_Compare_Boolean_23_A_is_True,
    });
    params = {
        -- A,
        [0] = self.bSawLauncherPickedup,
    };
    return params;
end;

function export:OnEnter_box_Print_v2_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_2");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_400\\MIS_400_B10.domino|@RetrieveObjective_manager|1143461882");
    l0:SetConnections({
    });
    params = {
        -- color,
        [1] = "white",
        -- duration,
        [3] = 5,
        -- int,
        [6] = self.iTotalInteraction,
        -- path,
        [7] = "C:\\Print.log",
        -- str,
        [8] = "Pickedup:",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_13()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2109470062275471006",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_12()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2109469964609005197",
    };
    return params;
end;

function export:OnEnter_box_PickupListener_v2_22()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- pickupId,
        [1] = "2109470053140276892",
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_21()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_21");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_400\\MIS_400_B10.domino|@RetrieveObjective_manager|1303238697");
    l0:SetConnections({
        -- A_is_True,
        [2] = self.f_box_Compare_Boolean_21_A_is_True,
    });
    params = {
        -- A,
        [0] = self.bSawLauncherPickedup,
    };
    return params;
end;

function export:OnEnter_box_SetActivityObjectiveProgress_v2_26()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityObjectiveProgress_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetActivityObjectiveProgress_v2_26");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_400\\MIS_400_B10.domino|@RetrieveObjective_manager|1340718515");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetActivityObjectiveProgress_v2_26_Out,
    });
    params = {
        -- ObjectiveId,
        [0] = {
            section = "Objectives",
            item = "MIS_400_OBJ_B10_PickupStolenRessources",
            id = "1001254",
        },
        -- Progress,
        [1] = self.iTotalInteraction,
        -- ProgressId,
        [2] = self.iProgress,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_7()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_7");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_400\\MIS_400_B10.domino|@RetrieveObjective_manager|1469832301");
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

function export:OnEnter_box_Gate_v3_36()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_IntegerArithmetics_v2_20()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IntegerArithmetics_v2_20");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_400\\MIS_400_B10.domino|@RetrieveObjective_manager|1491549316");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_IntegerArithmetics_v2_20_Out,
    });
    params = {
        -- A,
        [0] = 1,
        -- B,
        [1] = self.iTotalInteraction,
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_27()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_27");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_400\\MIS_400_B10.domino|@RetrieveObjective_manager|1498847211");
    l0:SetConnections({
        -- A_le_B,
        [3] = self.f_box_Compare_Integers_27_A_le_B,
    });
    params = {
        -- A,
        [0] = 3,
        -- B,
        [1] = self.iTotalInteraction,
    };
    return params;
end;

function export:OnEnter_box_Print_v2_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_5");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_400\\MIS_400_B10.domino|@RetrieveObjective_manager|1550946244");
    l0:SetConnections({
    });
    params = {
        -- color,
        [1] = "white",
        -- duration,
        [3] = 5,
        -- int,
        [6] = self.iTotalInteraction,
        -- path,
        [7] = "C:\\Print.log",
        -- str,
        [8] = "Pickedup:",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_11()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2109470053140276892",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_44()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_44");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_400\\MIS_400_B10.domino|@RetrieveObjective_manager|1673778695");
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
                [0] = self.f_box_OutputOrder_v2_44_Out_0,
                [1] = self.f_box_OutputOrder_v2_44_Out_1,
                [2] = self.f_box_OutputOrder_v2_44_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_30()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_PickupListener_v2_49()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- pickupId,
        [1] = "2109470062275471006",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_3");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_400\\MIS_400_B10.domino|@RetrieveObjective_manager|1887039945");
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
                [0] = self.f_box_OutputOrder_v2_3_Out_0,
                [1] = self.f_box_OutputOrder_v2_3_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_18()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_18");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_400\\MIS_400_B10.domino|@RetrieveObjective_manager|2009471234");
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
                [0] = self.f_box_OutputOrder_v2_18_Out_0,
                [1] = self.f_box_OutputOrder_v2_18_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_IntegerArithmetics_v2_19()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IntegerArithmetics_v2_19");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_400\\MIS_400_B10.domino|@RetrieveObjective_manager|2060007752");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_IntegerArithmetics_v2_19_Out,
    });
    params = {
        -- A,
        [0] = 1,
        -- B,
        [1] = self.iTotalInteraction,
    };
    return params;
end;

function export:OnEnter_box_LookAtTrigger_v2_39()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- pawns,
        [1] = "#ED455357",
        -- triggerId,
        [2] = "2109455709379763753",
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_9()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_9");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_400\\MIS_400_B10.domino|@RetrieveObjective_manager|2100660334");
    l0:SetConnections({
        -- A_le_B,
        [3] = self.f_box_Compare_Integers_9_A_le_B,
    });
    params = {
        -- A,
        [0] = 3,
        -- B,
        [1] = self.iTotalInteraction,
    };
    return params;
end;

function export:OnEnter_box_ActivityObjectiveMarkerModifier_v3_38()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityObjectiveMarkerModifier_v3_38");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_400\\MIS_400_B10.domino|@RetrieveObjective_manager|2119172619");
    l0:SetConnections({
    });
    params = {
        -- Marker,
        [1] = "2108459098658844284",
        -- ObjectiveId,
        [2] = {
            section = "Objectives",
            item = "MIS_400_OBJ_B10_PickupStolenRessources",
            id = "1001254",
        },
    };
    return params;
end;

function export:OnExit_box_SetBoolean_v2_50_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    self.bSawLauncherPickedup = l0:GetDataOutValue(0);
end;

function export:OnExit_box_AddActivityObjectiveProgress_v2_25_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjectiveProgress_v2.lua")];
    self.iProgress = l0:GetDataOutValue(0);
end;

function export:OnExit_box_IntegerArithmetics_v2_16_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    self.iTotalInteraction = l0:GetDataOutValue(0);
end;

function export:OnExit_box_IntegerArithmetics_v2_20_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    self.iTotalInteraction = l0:GetDataOutValue(0);
end;

function export:OnExit_box_IntegerArithmetics_v2_19_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    self.iTotalInteraction = l0:GetDataOutValue(0);
end;

-- Empty out anchor definitions
function export:Interacted()
    
end;
function export:Interacted3Time()
    
end;
function export:Out()
    
end;
function export:_2objOff3()
    
end;
_compilerVersion = 60;
<DominoMetadata IsStateless="0" IsSystem="0">
	<ControlsIn>
		<ControlIn Name="In" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
		<ControlIn Name="SawLauncherPickedup" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
	</ControlsIn>
	<ControlsOut>
		<ControlOut Name="2objOff3" AnchorDynType="0" IsDelayed="1" />
		<ControlOut Name="Interacted" AnchorDynType="0" IsDelayed="1" />
		<ControlOut Name="Interacted3Time" AnchorDynType="0" IsDelayed="1" />
		<ControlOut Name="Out" AnchorDynType="0" IsDelayed="0" />
	</ControlsOut>
	<DatasIn />
	<DatasOut />
</DominoMetadata>
