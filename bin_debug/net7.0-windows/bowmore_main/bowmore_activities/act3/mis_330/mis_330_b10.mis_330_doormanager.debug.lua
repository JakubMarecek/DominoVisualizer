LUAC -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/bowmore_main/bowmore_activities/act3/mis_330/mis_330_b10.domino
-- User graph: MIS_330_DoorManager
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
        cboxRes:RegisterBox("Domino/System/AI/NavLinkModifier.lua");
        cboxRes:RegisterBox("Domino/System/Bind_v4.lua");
        cboxRes:RegisterBox("Domino/System/CompareBoolean.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/PositionModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/SimpleNode.lua");
        -- External globals dependencies
        cboxRes:RegisterGlobals("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_330/mis_330_b10.globals.lua");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_330/mis_330_b10.MIS_330_DoorManager.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Enable",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "Opened_Door",
                delayed = false,
            },
            [1] = {
                name = "Out",
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
    metadataTable[GetPathID("Domino/System/AI/NavLinkModifier.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Activate",
            },
            [1] = {
                name = "Deactivate",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "Activated",
                delayed = false,
            },
            [1] = {
                name = "Deactivated",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "Entity",
                type = "entity",
            },
        },
        dataInCount = 1,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/Bind_v4.lua")] = {
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
                name = "Bound",
                delayed = false,
            },
            [1] = {
                name = "UnBound",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "BoneName",
                type = "string",
            },
            [1] = {
                name = "EntityA",
                type = "entity",
            },
            [2] = {
                name = "EntityB",
                type = "entity",
            },
            [3] = {
                name = "IsMultiBeatBind",
                type = "bool",
            },
            [4] = {
                name = "PositionOnly",
                type = "bool",
            },
            [5] = {
                name = "RemoveOffset",
                type = "bool",
            },
        },
        dataInCount = 6,
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
    metadataTable[GetPathID("Domino/System/PositionModifier_v2.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Cancel",
            },
            [1] = {
                name = "Start",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "Cancelled",
                delayed = false,
            },
            [1] = {
                name = "Done",
                delayed = true,
            },
            [2] = {
                name = "StartOut",
                delayed = false,
            },
        },
        controlOutCount = 3,
        dataIn = {
            [0] = {
                name = "blendCurve",
                type = "archetype",
            },
            [1] = {
                name = "blendTime",
                type = "float",
            },
            [2] = {
                name = "endPos",
                type = "list",
            },
            [3] = {
                name = "endRot",
                type = "list",
            },
            [4] = {
                name = "endTarget",
                type = "entity",
            },
            [5] = {
                name = "players",
                type = "group",
            },
            [6] = {
                name = "targets",
                type = "group",
            },
            [7] = {
                name = "usePhysVelocity",
                type = "bool",
            },
            [8] = {
                name = "useSmallestAngleDiff",
                type = "bool",
            },
        },
        dataInCount = 9,
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
    self._name = "MIS_330_DoorManager";
    self._elementPathId = "DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b10.domino|@MIS_330_DoorManager";
    self.Opened_Door = DummyFunction;
    self.Out = DummyFunction;
    self.box_PositionModifier_v2_2 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_2");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b10.domino|@MIS_330_DoorManager|66152995");
    l0:SetConnections({
        -- StartOut,
        [2] = self.f_box_PositionModifier_v2_2_StartOut,
    });
    self.box_PositionModifier_v2_35 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_35;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_35");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b10.domino|@MIS_330_DoorManager|87715875");
    l0:SetConnections({
        -- Done,
        [1] = self.f_box_PositionModifier_v2_35_Done,
        -- StartOut,
        [2] = self.f_box_PositionModifier_v2_35_StartOut,
    });
    self.box_NavLinkModifier_23 = cbox:CreateBox("Domino/System/AI/NavLinkModifier.lua");
    l0 = self.box_NavLinkModifier_23;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NavLinkModifier_23");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b10.domino|@MIS_330_DoorManager|100531164");
    l0:SetConnections({
    });
    self.box_NavLinkModifier_5 = cbox:CreateBox("Domino/System/AI/NavLinkModifier.lua");
    l0 = self.box_NavLinkModifier_5;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NavLinkModifier_5");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b10.domino|@MIS_330_DoorManager|132415464");
    l0:SetConnections({
    });
    self.box_PositionModifier_v2_33 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_33;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_33");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b10.domino|@MIS_330_DoorManager|243774058");
    l0:SetConnections({
        -- StartOut,
        [2] = self.f_box_PositionModifier_v2_33_StartOut,
    });
    self.box_NavLinkModifier_36 = cbox:CreateBox("Domino/System/AI/NavLinkModifier.lua");
    l0 = self.box_NavLinkModifier_36;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NavLinkModifier_36");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b10.domino|@MIS_330_DoorManager|335315209");
    l0:SetConnections({
    });
    self.box_NavLinkModifier_27 = cbox:CreateBox("Domino/System/AI/NavLinkModifier.lua");
    l0 = self.box_NavLinkModifier_27;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NavLinkModifier_27");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b10.domino|@MIS_330_DoorManager|372728090");
    l0:SetConnections({
    });
    self.box_PositionModifier_v2_18 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_18;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_18");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b10.domino|@MIS_330_DoorManager|393917050");
    l0:SetConnections({
        -- StartOut,
        [2] = self.f_box_PositionModifier_v2_18_StartOut,
    });
    self.box_NavLinkModifier_9 = cbox:CreateBox("Domino/System/AI/NavLinkModifier.lua");
    l0 = self.box_NavLinkModifier_9;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NavLinkModifier_9");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b10.domino|@MIS_330_DoorManager|437249335");
    l0:SetConnections({
    });
    self.box_PositionModifier_v2_32 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_32;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_32");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b10.domino|@MIS_330_DoorManager|523166177");
    l0:SetConnections({
        -- StartOut,
        [2] = self.f_box_PositionModifier_v2_32_StartOut,
    });
    self.box_Bind_v4_12 = cbox:CreateBox("Domino/System/Bind_v4.lua");
    l0 = self.box_Bind_v4_12;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Bind_v4_12");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b10.domino|@MIS_330_DoorManager|537458824");
    l0:SetConnections({
        -- Bound,
        [0] = self.f_box_Bind_v4_12_Bound,
    });
    self.box_PositionModifier_v2_26 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_26;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_26");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b10.domino|@MIS_330_DoorManager|590251419");
    l0:SetConnections({
        -- StartOut,
        [2] = self.f_box_PositionModifier_v2_26_StartOut,
    });
    self.box_PositionModifier_v2_13 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_13;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_13");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b10.domino|@MIS_330_DoorManager|724636513");
    l0:SetConnections({
        -- Done,
        [1] = self.f_box_PositionModifier_v2_13_Done,
        -- StartOut,
        [2] = self.f_box_PositionModifier_v2_13_StartOut,
    });
    self.box_PositionModifier_v2_11 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_11;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_11");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b10.domino|@MIS_330_DoorManager|770427053");
    l0:SetConnections({
        -- Done,
        [1] = self.f_box_PositionModifier_v2_11_Done,
        -- StartOut,
        [2] = self.f_box_PositionModifier_v2_11_StartOut,
    });
    self.box_NavLinkModifier_31 = cbox:CreateBox("Domino/System/AI/NavLinkModifier.lua");
    l0 = self.box_NavLinkModifier_31;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NavLinkModifier_31");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b10.domino|@MIS_330_DoorManager|920727794");
    l0:SetConnections({
    });
    self.box_PositionModifier_v2_37 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_37;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_37");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b10.domino|@MIS_330_DoorManager|981000826");
    l0:SetConnections({
        -- StartOut,
        [2] = self.f_box_PositionModifier_v2_37_StartOut,
    });
    self.box_PositionModifier_v2_28 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_28;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_28");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b10.domino|@MIS_330_DoorManager|1104679718");
    l0:SetConnections({
        -- StartOut,
        [2] = self.f_box_PositionModifier_v2_28_StartOut,
    });
    self.box_PositionModifier_v2_34 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_34;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_34");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b10.domino|@MIS_330_DoorManager|1123429363");
    l0:SetConnections({
        -- Done,
        [1] = self.f_box_PositionModifier_v2_34_Done,
        -- StartOut,
        [2] = self.f_box_PositionModifier_v2_34_StartOut,
    });
    self.box_PositionModifier_v2_21 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_21;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_21");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b10.domino|@MIS_330_DoorManager|1146552012");
    l0:SetConnections({
        -- Done,
        [1] = self.f_box_PositionModifier_v2_21_Done,
        -- StartOut,
        [2] = self.f_box_PositionModifier_v2_21_StartOut,
    });
    self.box_PositionModifier_v2_30 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_30;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_30");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b10.domino|@MIS_330_DoorManager|1182012793");
    l0:SetConnections({
        -- Done,
        [1] = self.f_box_PositionModifier_v2_30_Done,
        -- StartOut,
        [2] = self.f_box_PositionModifier_v2_30_StartOut,
    });
    self.box_PositionModifier_v2_4 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_4;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_4");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b10.domino|@MIS_330_DoorManager|1308628985");
    l0:SetConnections({
        -- StartOut,
        [2] = self.f_box_PositionModifier_v2_4_StartOut,
    });
    self.box_PositionModifier_v2_25 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_25;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_25");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b10.domino|@MIS_330_DoorManager|1427832991");
    l0:SetConnections({
        -- StartOut,
        [2] = self.f_box_PositionModifier_v2_25_StartOut,
    });
    self.box_Bind_v4_6 = cbox:CreateBox("Domino/System/Bind_v4.lua");
    l0 = self.box_Bind_v4_6;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Bind_v4_6");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b10.domino|@MIS_330_DoorManager|1550214630");
    l0:SetConnections({
        -- Bound,
        [0] = self.f_box_Bind_v4_6_Bound,
    });
    self.box_PositionModifier_v2_20 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_20;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_20");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b10.domino|@MIS_330_DoorManager|1603212486");
    l0:SetConnections({
        -- Done,
        [1] = self.f_box_PositionModifier_v2_20_Done,
        -- StartOut,
        [2] = self.f_box_PositionModifier_v2_20_StartOut,
    });
    self.box_NavLinkModifier_29 = cbox:CreateBox("Domino/System/AI/NavLinkModifier.lua");
    l0 = self.box_NavLinkModifier_29;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NavLinkModifier_29");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b10.domino|@MIS_330_DoorManager|1622337924");
    l0:SetConnections({
    });
    self.box_PositionModifier_v2_22 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_22;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_22");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b10.domino|@MIS_330_DoorManager|1628064041");
    l0:SetConnections({
        -- Done,
        [1] = self.f_box_PositionModifier_v2_22_Done,
        -- StartOut,
        [2] = self.f_box_PositionModifier_v2_22_StartOut,
    });
    self.box_Bind_v4_16 = cbox:CreateBox("Domino/System/Bind_v4.lua");
    l0 = self.box_Bind_v4_16;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Bind_v4_16");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b10.domino|@MIS_330_DoorManager|1630122003");
    l0:SetConnections({
        -- Bound,
        [0] = self.f_box_Bind_v4_16_Bound,
    });
    self.box_NavLinkModifier_19 = cbox:CreateBox("Domino/System/AI/NavLinkModifier.lua");
    l0 = self.box_NavLinkModifier_19;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NavLinkModifier_19");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b10.domino|@MIS_330_DoorManager|1700083582");
    l0:SetConnections({
    });
    self.box_NavLinkModifier_17 = cbox:CreateBox("Domino/System/AI/NavLinkModifier.lua");
    l0 = self.box_NavLinkModifier_17;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NavLinkModifier_17");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b10.domino|@MIS_330_DoorManager|1712912527");
    l0:SetConnections({
    });
    self.box_Bind_v4_15 = cbox:CreateBox("Domino/System/Bind_v4.lua");
    l0 = self.box_Bind_v4_15;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Bind_v4_15");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b10.domino|@MIS_330_DoorManager|1713967038");
    l0:SetConnections({
        -- Bound,
        [0] = self.f_box_Bind_v4_15_Bound,
    });
    self.box_PositionModifier_v2_24 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_24;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_24");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b10.domino|@MIS_330_DoorManager|1798717715");
    l0:SetConnections({
        -- Done,
        [1] = self.f_box_PositionModifier_v2_24_Done,
        -- StartOut,
        [2] = self.f_box_PositionModifier_v2_24_StartOut,
    });
end;

function export:Enable()
    local params, l0;
    params = self:OnEnter_box_OutputOrder_v2_3();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b10.domino|@MIS_330_DoorManager|483637350", "483637350", "MIS_330_DoorManager", "Enable", "box_OutputOrder_v2_3.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_38_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b10.domino|@MIS_330_DoorManager|25425704", "25425704", "MIS_330_DoorManager", "box_Simple_Node_38.Out", "Opened Door", clone:GetLuaBox(), self);
    self:Opened_Door();
end;

function export:f_box_PositionModifier_v2_2_StartOut()
    local params, l0, l1;
    params = self:OnEnter_box_PositionModifier_v2_13();
    l0 = self.box_PositionModifier_v2_2;
    l1 = self.box_PositionModifier_v2_13;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b10.domino|@MIS_330_DoorManager|2050352731", "2050352731", "MIS_330_DoorManager", "box_PositionModifier_v2_2.StartOut", "box_PositionModifier_v2_13.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(1, params);
end;

function export:f_box_PositionModifier_v2_35_Done()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_38();
    l0 = self.box_PositionModifier_v2_35;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b10.domino|@MIS_330_DoorManager|550868946", "550868946", "MIS_330_DoorManager", "box_PositionModifier_v2_35.Done", "box_Simple_Node_38.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PositionModifier_v2_35_StartOut()
    local params, l0, l1;
    params = self:OnEnter_box_NavLinkModifier_29();
    l0 = self.box_PositionModifier_v2_35;
    l1 = self.box_NavLinkModifier_29;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b10.domino|@MIS_330_DoorManager|922934674", "922934674", "MIS_330_DoorManager", "box_PositionModifier_v2_35.StartOut", "box_NavLinkModifier_29.Activate", l0:GetLuaBox(), l1:GetLuaBox());
    -- Activate
    l1:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_3_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b10.domino|@MIS_330_DoorManager|2107420200", "2107420200", "MIS_330_DoorManager", "box_OutputOrder_v2_3.Out", "Out", clone:GetLuaBox(), self);
    self:Out();
end;

function export:f_box_OutputOrder_v2_3_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Boolean_1();
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b10.domino|@MIS_330_DoorManager|104669751", "104669751", "MIS_330_DoorManager", "box_OutputOrder_v2_3.Out", "box_Compare_Boolean_1.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_3_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Boolean_10();
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b10.domino|@MIS_330_DoorManager|2057552851", "2057552851", "MIS_330_DoorManager", "box_OutputOrder_v2_3.Out", "box_Compare_Boolean_10.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_3_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Boolean_8();
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b10.domino|@MIS_330_DoorManager|533082018", "533082018", "MIS_330_DoorManager", "box_OutputOrder_v2_3.Out", "box_Compare_Boolean_8.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_3_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Boolean_7();
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b10.domino|@MIS_330_DoorManager|2042668346", "2042668346", "MIS_330_DoorManager", "box_OutputOrder_v2_3.Out", "box_Compare_Boolean_7.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_3_Out_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Boolean_14();
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b10.domino|@MIS_330_DoorManager|569732862", "569732862", "MIS_330_DoorManager", "box_OutputOrder_v2_3.Out", "box_Compare_Boolean_14.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_PositionModifier_v2_33_StartOut()
    local params, l0, l1;
    params = self:OnEnter_box_PositionModifier_v2_35();
    l0 = self.box_PositionModifier_v2_33;
    l1 = self.box_PositionModifier_v2_35;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b10.domino|@MIS_330_DoorManager|1812994611", "1812994611", "MIS_330_DoorManager", "box_PositionModifier_v2_33.StartOut", "box_PositionModifier_v2_35.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(1, params);
end;

function export:f_box_PositionModifier_v2_18_StartOut()
    local params, l0, l1;
    params = self:OnEnter_box_PositionModifier_v2_21();
    l0 = self.box_PositionModifier_v2_18;
    l1 = self.box_PositionModifier_v2_21;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b10.domino|@MIS_330_DoorManager|643238658", "643238658", "MIS_330_DoorManager", "box_PositionModifier_v2_18.StartOut", "box_PositionModifier_v2_21.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(1, params);
end;

function export:f_box_Compare_Boolean_14_A_is_False()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_PositionModifier_v2_28();
    l0 = self.box_PositionModifier_v2_28;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b10.domino|@MIS_330_DoorManager|1941778697", "1941778697", "MIS_330_DoorManager", "box_Compare_Boolean_14.A_is_False", "box_PositionModifier_v2_28.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(1, params);
end;

function export:f_box_Compare_Boolean_14_A_is_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_PositionModifier_v2_25();
    l0 = self.box_PositionModifier_v2_25;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b10.domino|@MIS_330_DoorManager|2068189125", "2068189125", "MIS_330_DoorManager", "box_Compare_Boolean_14.A_is_True", "box_PositionModifier_v2_25.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(1, params);
end;

function export:f_box_PositionModifier_v2_32_StartOut()
    local params, l0, l1;
    params = self:OnEnter_box_PositionModifier_v2_30();
    l0 = self.box_PositionModifier_v2_32;
    l1 = self.box_PositionModifier_v2_30;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b10.domino|@MIS_330_DoorManager|107341704", "107341704", "MIS_330_DoorManager", "box_PositionModifier_v2_32.StartOut", "box_PositionModifier_v2_30.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(1, params);
end;

function export:f_box_Bind_v4_12_Bound()
    local params, l0, l1;
    params = self:OnEnter_box_PositionModifier_v2_4();
    l0 = self.box_Bind_v4_12;
    l1 = self.box_PositionModifier_v2_4;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b10.domino|@MIS_330_DoorManager|98406444", "98406444", "MIS_330_DoorManager", "box_Bind_v4_12.Bound", "box_PositionModifier_v2_4.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(1, params);
end;

function export:f_box_PositionModifier_v2_26_StartOut()
    local params, l0, l1;
    params = self:OnEnter_box_PositionModifier_v2_24();
    l0 = self.box_PositionModifier_v2_26;
    l1 = self.box_PositionModifier_v2_24;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b10.domino|@MIS_330_DoorManager|454781063", "454781063", "MIS_330_DoorManager", "box_PositionModifier_v2_26.StartOut", "box_PositionModifier_v2_24.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(1, params);
end;

function export:f_box_Compare_Boolean_10_A_is_False()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_PositionModifier_v2_26();
    l0 = self.box_PositionModifier_v2_26;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b10.domino|@MIS_330_DoorManager|2129141012", "2129141012", "MIS_330_DoorManager", "box_Compare_Boolean_10.A_is_False", "box_PositionModifier_v2_26.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(1, params);
end;

function export:f_box_Compare_Boolean_10_A_is_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_PositionModifier_v2_18();
    l0 = self.box_PositionModifier_v2_18;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b10.domino|@MIS_330_DoorManager|534314763", "534314763", "MIS_330_DoorManager", "box_Compare_Boolean_10.A_is_True", "box_PositionModifier_v2_18.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(1, params);
end;

function export:f_box_PositionModifier_v2_13_Done()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_38();
    l0 = self.box_PositionModifier_v2_13;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b10.domino|@MIS_330_DoorManager|1040173643", "1040173643", "MIS_330_DoorManager", "box_PositionModifier_v2_13.Done", "box_Simple_Node_38.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PositionModifier_v2_13_StartOut()
    local params, l0, l1;
    params = self:OnEnter_box_NavLinkModifier_9();
    l0 = self.box_PositionModifier_v2_13;
    l1 = self.box_NavLinkModifier_9;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b10.domino|@MIS_330_DoorManager|930645411", "930645411", "MIS_330_DoorManager", "box_PositionModifier_v2_13.StartOut", "box_NavLinkModifier_9.Activate", l0:GetLuaBox(), l1:GetLuaBox());
    -- Activate
    l1:Exec(0, params);
end;

function export:f_box_PositionModifier_v2_11_Done()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_38();
    l0 = self.box_PositionModifier_v2_11;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b10.domino|@MIS_330_DoorManager|427968195", "427968195", "MIS_330_DoorManager", "box_PositionModifier_v2_11.Done", "box_Simple_Node_38.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PositionModifier_v2_11_StartOut()
    local params, l0, l1;
    params = self:OnEnter_box_NavLinkModifier_5();
    l0 = self.box_PositionModifier_v2_11;
    l1 = self.box_NavLinkModifier_5;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b10.domino|@MIS_330_DoorManager|1203532161", "1203532161", "MIS_330_DoorManager", "box_PositionModifier_v2_11.StartOut", "box_NavLinkModifier_5.Deactivate", l0:GetLuaBox(), l1:GetLuaBox());
    -- Deactivate
    l1:Exec(1, params);
end;

function export:f_box_Compare_Boolean_1_A_is_False()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_Bind_v4_16();
    l0 = self.box_Bind_v4_16;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b10.domino|@MIS_330_DoorManager|1274076656", "1274076656", "MIS_330_DoorManager", "box_Compare_Boolean_1.A_is_False", "box_Bind_v4_16.Bind", clone:GetLuaBox(), l0:GetLuaBox());
    -- Bind
    l0:Exec(0, params);
end;

function export:f_box_Compare_Boolean_1_A_is_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_Bind_v4_6();
    l0 = self.box_Bind_v4_6;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b10.domino|@MIS_330_DoorManager|646544179", "646544179", "MIS_330_DoorManager", "box_Compare_Boolean_1.A_is_True", "box_Bind_v4_6.Bind", clone:GetLuaBox(), l0:GetLuaBox());
    -- Bind
    l0:Exec(0, params);
end;

function export:f_box_PositionModifier_v2_37_StartOut()
    local params, l0, l1;
    params = self:OnEnter_box_PositionModifier_v2_34();
    l0 = self.box_PositionModifier_v2_37;
    l1 = self.box_PositionModifier_v2_34;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b10.domino|@MIS_330_DoorManager|1020879552", "1020879552", "MIS_330_DoorManager", "box_PositionModifier_v2_37.StartOut", "box_PositionModifier_v2_34.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(1, params);
end;

function export:f_box_PositionModifier_v2_28_StartOut()
    local params, l0, l1;
    params = self:OnEnter_box_PositionModifier_v2_22();
    l0 = self.box_PositionModifier_v2_28;
    l1 = self.box_PositionModifier_v2_22;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b10.domino|@MIS_330_DoorManager|437981482", "437981482", "MIS_330_DoorManager", "box_PositionModifier_v2_28.StartOut", "box_PositionModifier_v2_22.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(1, params);
end;

function export:f_box_PositionModifier_v2_34_Done()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_38();
    l0 = self.box_PositionModifier_v2_34;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b10.domino|@MIS_330_DoorManager|272490590", "272490590", "MIS_330_DoorManager", "box_PositionModifier_v2_34.Done", "box_Simple_Node_38.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PositionModifier_v2_34_StartOut()
    local params, l0, l1;
    params = self:OnEnter_box_NavLinkModifier_36();
    l0 = self.box_PositionModifier_v2_34;
    l1 = self.box_NavLinkModifier_36;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b10.domino|@MIS_330_DoorManager|24867887", "24867887", "MIS_330_DoorManager", "box_PositionModifier_v2_34.StartOut", "box_NavLinkModifier_36.Deactivate", l0:GetLuaBox(), l1:GetLuaBox());
    -- Deactivate
    l1:Exec(1, params);
end;

function export:f_box_PositionModifier_v2_21_Done()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_38();
    l0 = self.box_PositionModifier_v2_21;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b10.domino|@MIS_330_DoorManager|692919880", "692919880", "MIS_330_DoorManager", "box_PositionModifier_v2_21.Done", "box_Simple_Node_38.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PositionModifier_v2_21_StartOut()
    local params, l0, l1;
    params = self:OnEnter_box_NavLinkModifier_23();
    l0 = self.box_PositionModifier_v2_21;
    l1 = self.box_NavLinkModifier_23;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b10.domino|@MIS_330_DoorManager|1294340647", "1294340647", "MIS_330_DoorManager", "box_PositionModifier_v2_21.StartOut", "box_NavLinkModifier_23.Activate", l0:GetLuaBox(), l1:GetLuaBox());
    -- Activate
    l1:Exec(0, params);
end;

function export:f_box_PositionModifier_v2_30_Done()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_38();
    l0 = self.box_PositionModifier_v2_30;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b10.domino|@MIS_330_DoorManager|1915135832", "1915135832", "MIS_330_DoorManager", "box_PositionModifier_v2_30.Done", "box_Simple_Node_38.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PositionModifier_v2_30_StartOut()
    local params, l0, l1;
    params = self:OnEnter_box_NavLinkModifier_31();
    l0 = self.box_PositionModifier_v2_30;
    l1 = self.box_NavLinkModifier_31;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b10.domino|@MIS_330_DoorManager|153943349", "153943349", "MIS_330_DoorManager", "box_PositionModifier_v2_30.StartOut", "box_NavLinkModifier_31.Activate", l0:GetLuaBox(), l1:GetLuaBox());
    -- Activate
    l1:Exec(0, params);
end;

function export:f_box_PositionModifier_v2_4_StartOut()
    local params, l0, l1;
    params = self:OnEnter_box_PositionModifier_v2_11();
    l0 = self.box_PositionModifier_v2_4;
    l1 = self.box_PositionModifier_v2_11;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b10.domino|@MIS_330_DoorManager|1967169798", "1967169798", "MIS_330_DoorManager", "box_PositionModifier_v2_4.StartOut", "box_PositionModifier_v2_11.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(1, params);
end;

function export:f_box_PositionModifier_v2_25_StartOut()
    local params, l0, l1;
    params = self:OnEnter_box_PositionModifier_v2_20();
    l0 = self.box_PositionModifier_v2_25;
    l1 = self.box_PositionModifier_v2_20;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b10.domino|@MIS_330_DoorManager|1010705871", "1010705871", "MIS_330_DoorManager", "box_PositionModifier_v2_25.StartOut", "box_PositionModifier_v2_20.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(1, params);
end;

function export:f_box_Compare_Boolean_8_A_is_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_PositionModifier_v2_32();
    l0 = self.box_PositionModifier_v2_32;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b10.domino|@MIS_330_DoorManager|2071124598", "2071124598", "MIS_330_DoorManager", "box_Compare_Boolean_8.A_is_True", "box_PositionModifier_v2_32.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(1, params);
end;

function export:f_box_Bind_v4_6_Bound()
    local params, l0, l1;
    params = self:OnEnter_box_Bind_v4_15();
    l0 = self.box_Bind_v4_6;
    l1 = self.box_Bind_v4_15;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b10.domino|@MIS_330_DoorManager|1945227847", "1945227847", "MIS_330_DoorManager", "box_Bind_v4_6.Bound", "box_Bind_v4_15.Bind", l0:GetLuaBox(), l1:GetLuaBox());
    -- Bind
    l1:Exec(0, params);
end;

function export:f_box_PositionModifier_v2_20_Done()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_38();
    l0 = self.box_PositionModifier_v2_20;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b10.domino|@MIS_330_DoorManager|655335032", "655335032", "MIS_330_DoorManager", "box_PositionModifier_v2_20.Done", "box_Simple_Node_38.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PositionModifier_v2_20_StartOut()
    local params, l0, l1;
    params = self:OnEnter_box_NavLinkModifier_19();
    l0 = self.box_PositionModifier_v2_20;
    l1 = self.box_NavLinkModifier_19;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b10.domino|@MIS_330_DoorManager|1592020139", "1592020139", "MIS_330_DoorManager", "box_PositionModifier_v2_20.StartOut", "box_NavLinkModifier_19.Activate", l0:GetLuaBox(), l1:GetLuaBox());
    -- Activate
    l1:Exec(0, params);
end;

function export:f_box_PositionModifier_v2_22_Done()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_38();
    l0 = self.box_PositionModifier_v2_22;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b10.domino|@MIS_330_DoorManager|470023304", "470023304", "MIS_330_DoorManager", "box_PositionModifier_v2_22.Done", "box_Simple_Node_38.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PositionModifier_v2_22_StartOut()
    local params, l0, l1;
    params = self:OnEnter_box_NavLinkModifier_27();
    l0 = self.box_PositionModifier_v2_22;
    l1 = self.box_NavLinkModifier_27;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b10.domino|@MIS_330_DoorManager|1024858029", "1024858029", "MIS_330_DoorManager", "box_PositionModifier_v2_22.StartOut", "box_NavLinkModifier_27.Deactivate", l0:GetLuaBox(), l1:GetLuaBox());
    -- Deactivate
    l1:Exec(1, params);
end;

function export:f_box_Bind_v4_16_Bound()
    local params, l0, l1;
    params = self:OnEnter_box_Bind_v4_12();
    l0 = self.box_Bind_v4_16;
    l1 = self.box_Bind_v4_12;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b10.domino|@MIS_330_DoorManager|581982903", "581982903", "MIS_330_DoorManager", "box_Bind_v4_16.Bound", "box_Bind_v4_12.Bind", l0:GetLuaBox(), l1:GetLuaBox());
    -- Bind
    l1:Exec(0, params);
end;

function export:f_box_Compare_Boolean_7_A_is_False()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_PositionModifier_v2_37();
    l0 = self.box_PositionModifier_v2_37;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b10.domino|@MIS_330_DoorManager|1788405395", "1788405395", "MIS_330_DoorManager", "box_Compare_Boolean_7.A_is_False", "box_PositionModifier_v2_37.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(1, params);
end;

function export:f_box_Compare_Boolean_7_A_is_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_PositionModifier_v2_33();
    l0 = self.box_PositionModifier_v2_33;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b10.domino|@MIS_330_DoorManager|694701195", "694701195", "MIS_330_DoorManager", "box_Compare_Boolean_7.A_is_True", "box_PositionModifier_v2_33.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(1, params);
end;

function export:f_box_Bind_v4_15_Bound()
    local params, l0, l1;
    params = self:OnEnter_box_PositionModifier_v2_2();
    l0 = self.box_Bind_v4_15;
    l1 = self.box_PositionModifier_v2_2;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b10.domino|@MIS_330_DoorManager|513042818", "513042818", "MIS_330_DoorManager", "box_Bind_v4_15.Bound", "box_PositionModifier_v2_2.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(1, params);
end;

function export:f_box_PositionModifier_v2_24_Done()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_38();
    l0 = self.box_PositionModifier_v2_24;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b10.domino|@MIS_330_DoorManager|2111548686", "2111548686", "MIS_330_DoorManager", "box_PositionModifier_v2_24.Done", "box_Simple_Node_38.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PositionModifier_v2_24_StartOut()
    local params, l0, l1;
    params = self:OnEnter_box_NavLinkModifier_17();
    l0 = self.box_PositionModifier_v2_24;
    l1 = self.box_NavLinkModifier_17;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b10.domino|@MIS_330_DoorManager|2056702990", "2056702990", "MIS_330_DoorManager", "box_PositionModifier_v2_24.StartOut", "box_NavLinkModifier_17.Deactivate", l0:GetLuaBox(), l1:GetLuaBox());
    -- Deactivate
    l1:Exec(1, params);
end;

function export:OnEnter_box_Simple_Node_38()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_38");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b10.domino|@MIS_330_DoorManager|@n_Opened");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_38_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_PositionModifier_v2_2()
    local params;
    DrawTextToScreen("Comment: OPEN DERBY SAS GATES", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'PositionModifier_v2')-- Comment: OPEN DERBY SAS GATES");
    params = {
        -- blendTime,
        [1] = 3,
        -- endTarget,
        [4] = "2108445587121637039",
        -- players,
        [5] = "#5B9E5CA4",
        -- targets,
        [6] = "2109291430026425248",
        -- usePhysVelocity,
        [7] = false,
        -- useSmallestAngleDiff,
        [8] = true,
    };
    return params;
end;

function export:OnEnter_box_PositionModifier_v2_35()
    local params;
    params = {
        -- blendTime,
        [1] = 3,
        -- endTarget,
        [4] = "2108503088630344772",
        -- players,
        [5] = "#5B9E5CA4",
        -- targets,
        [6] = "2108488866603212191",
        -- usePhysVelocity,
        [7] = false,
        -- useSmallestAngleDiff,
        [8] = true,
    };
    return params;
end;

function export:OnEnter_box_NavLinkModifier_23()
    local params;
    params = {
        -- Entity,
        [0] = "2107727881225377880",
    };
    return params;
end;

function export:OnEnter_box_NavLinkModifier_5()
    local params;
    params = {
        -- Entity,
        [0] = "2107727925450119264",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_3");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b10.domino|@MIS_330_DoorManager|194491973");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
            [0] = 6,
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
                [2] = self.f_box_OutputOrder_v2_3_Out_2,
                [3] = self.f_box_OutputOrder_v2_3_Out_3,
                [4] = self.f_box_OutputOrder_v2_3_Out_4,
                [5] = self.f_box_OutputOrder_v2_3_Out_5,
            },
            count = 6,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_PositionModifier_v2_33()
    local params;
    DrawTextToScreen("Comment: OPEN VIP EXIT", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'PositionModifier_v2')-- Comment: OPEN VIP EXIT");
    params = {
        -- blendTime,
        [1] = 3,
        -- endTarget,
        [4] = "2108503083483933760",
        -- players,
        [5] = "#5B9E5CA4",
        -- targets,
        [6] = "2108488916423155111",
        -- usePhysVelocity,
        [7] = false,
        -- useSmallestAngleDiff,
        [8] = true,
    };
    return params;
end;

function export:OnEnter_box_NavLinkModifier_36()
    local params;
    params = {
        -- Entity,
        [0] = "2108695974183439886",
    };
    return params;
end;

function export:OnEnter_box_NavLinkModifier_27()
    local params;
    params = {
        -- Entity,
        [0] = "2107826015282665246",
    };
    return params;
end;

function export:OnEnter_box_PositionModifier_v2_18()
    local params;
    DrawTextToScreen("Comment: OPEN ARENA GATES", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'PositionModifier_v2')-- Comment: OPEN ARENA GATES");
    params = {
        -- blendTime,
        [1] = 3,
        -- endTarget,
        [4] = "2108445606396561075",
        -- players,
        [5] = "#5B9E5CA4",
        -- targets,
        [6] = "2108350971521282484",
        -- usePhysVelocity,
        [7] = false,
        -- useSmallestAngleDiff,
        [8] = true,
    };
    return params;
end;

function export:OnEnter_box_NavLinkModifier_9()
    local params;
    params = {
        -- Entity,
        [0] = "2107727925450119264",
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_14()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_14");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b10.domino|@MIS_330_DoorManager|487273310");
    l0:SetConnections({
        -- A_is_False,
        [1] = self.f_box_Compare_Boolean_14_A_is_False,
        -- A_is_True,
        [2] = self.f_box_Compare_Boolean_14_A_is_True,
    });
    params = {
        -- A,
        [0] = PersistentGlobals.mis_330_b10.b_Derby_VIPGates_Opened,
    };
    return params;
end;

function export:OnEnter_box_PositionModifier_v2_32()
    local params;
    DrawTextToScreen("Comment: OPEN VIP ENTRANCE", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'PositionModifier_v2')-- Comment: OPEN VIP ENTRANCE");
    params = {
        -- blendTime,
        [1] = 2,
        -- endTarget,
        [4] = "2108502598704178061",
        -- players,
        [5] = "#5B9E5CA4",
        -- targets,
        [6] = "2108489879271775708",
        -- usePhysVelocity,
        [7] = false,
        -- useSmallestAngleDiff,
        [8] = true,
    };
    return params;
end;

function export:OnEnter_box_Bind_v4_12()
    local params;
    params = {
        -- EntityA,
        [1] = "2109291425278473114",
        -- EntityB,
        [2] = "2109775384026300458",
        -- IsMultiBeatBind,
        [3] = false,
        -- PositionOnly,
        [4] = false,
        -- RemoveOffset,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_PositionModifier_v2_26()
    local params;
    DrawTextToScreen("Comment: CLOSE ARENA GATES", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'PositionModifier_v2')-- Comment: CLOSE ARENA GATES");
    params = {
        -- blendTime,
        [1] = 3,
        -- endTarget,
        [4] = "2107743451951929781",
        -- players,
        [5] = "#5B9E5CA4",
        -- targets,
        [6] = "2108350971521282484",
        -- usePhysVelocity,
        [7] = false,
        -- useSmallestAngleDiff,
        [8] = true,
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_10()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_10");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b10.domino|@MIS_330_DoorManager|709495390");
    l0:SetConnections({
        -- A_is_False,
        [1] = self.f_box_Compare_Boolean_10_A_is_False,
        -- A_is_True,
        [2] = self.f_box_Compare_Boolean_10_A_is_True,
    });
    params = {
        -- A,
        [0] = PersistentGlobals.mis_330_b10.b_Derby_ArenaGates_Opened,
    };
    return params;
end;

function export:OnEnter_box_PositionModifier_v2_13()
    local params;
    params = {
        -- blendTime,
        [1] = 3,
        -- endTarget,
        [4] = "2107825867450223621",
        -- players,
        [5] = "#5B9E5CA4",
        -- targets,
        [6] = "2109291425278473114",
        -- usePhysVelocity,
        [7] = false,
        -- useSmallestAngleDiff,
        [8] = true,
    };
    return params;
end;

function export:OnEnter_box_PositionModifier_v2_11()
    local params;
    params = {
        -- blendTime,
        [1] = 3,
        -- endTarget,
        [4] = "2109677184019872588",
        -- players,
        [5] = "#5B9E5CA4",
        -- targets,
        [6] = "2109291425278473114",
        -- usePhysVelocity,
        [7] = false,
        -- useSmallestAngleDiff,
        [8] = true,
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_1");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b10.domino|@MIS_330_DoorManager|872588511");
    l0:SetConnections({
        -- A_is_False,
        [1] = self.f_box_Compare_Boolean_1_A_is_False,
        -- A_is_True,
        [2] = self.f_box_Compare_Boolean_1_A_is_True,
    });
    params = {
        -- A,
        [0] = PersistentGlobals.mis_330_b10.b_Derby_SasGates_Opened,
    };
    return params;
end;

function export:OnEnter_box_NavLinkModifier_31()
    local params;
    params = {
        -- Entity,
        [0] = "2108695971692023306",
    };
    return params;
end;

function export:OnEnter_box_PositionModifier_v2_37()
    local params;
    DrawTextToScreen("Comment: CLOSE VIP EXIT", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'PositionModifier_v2')-- Comment: CLOSE VIP EXIT");
    params = {
        -- blendTime,
        [1] = 3,
        -- endTarget,
        [4] = "2108503093286022233",
        -- players,
        [5] = "#5B9E5CA4",
        -- targets,
        [6] = "2108488916423155111",
        -- usePhysVelocity,
        [7] = false,
        -- useSmallestAngleDiff,
        [8] = true,
    };
    return params;
end;

function export:OnEnter_box_PositionModifier_v2_28()
    local params;
    DrawTextToScreen("Comment: CLOSE ARENA GATES", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'PositionModifier_v2')-- Comment: CLOSE ARENA GATES");
    params = {
        -- blendTime,
        [1] = 3,
        -- endTarget,
        [4] = "2107769845423540840",
        -- players,
        [5] = "#5B9E5CA4",
        -- targets,
        [6] = "2108417622151279377",
        -- usePhysVelocity,
        [7] = false,
        -- useSmallestAngleDiff,
        [8] = true,
    };
    return params;
end;

function export:OnEnter_box_PositionModifier_v2_34()
    local params;
    params = {
        -- blendTime,
        [1] = 3,
        -- endTarget,
        [4] = "2108503091687992405",
        -- players,
        [5] = "#5B9E5CA4",
        -- targets,
        [6] = "2108488866603212191",
        -- usePhysVelocity,
        [7] = false,
        -- useSmallestAngleDiff,
        [8] = true,
    };
    return params;
end;

function export:OnEnter_box_PositionModifier_v2_21()
    local params;
    params = {
        -- blendTime,
        [1] = 3,
        -- endTarget,
        [4] = "2107743377159100843",
        -- players,
        [5] = "#5B9E5CA4",
        -- targets,
        [6] = "2108350971519185330",
        -- usePhysVelocity,
        [7] = false,
        -- useSmallestAngleDiff,
        [8] = true,
    };
    return params;
end;

function export:OnEnter_box_PositionModifier_v2_30()
    local params;
    params = {
        -- blendTime,
        [1] = 2,
        -- endTarget,
        [4] = "2108502584277869445",
        -- players,
        [5] = "#5B9E5CA4",
        -- targets,
        [6] = "2108489879269678554",
        -- usePhysVelocity,
        [7] = false,
        -- useSmallestAngleDiff,
        [8] = true,
    };
    return params;
end;

function export:OnEnter_box_PositionModifier_v2_4()
    local params;
    DrawTextToScreen("Comment: CLOSE DERBY SAS GATES", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'PositionModifier_v2')-- Comment: CLOSE DERBY SAS GATES");
    params = {
        -- blendTime,
        [1] = 3,
        -- endTarget,
        [4] = "2107743362059606437",
        -- players,
        [5] = "#5B9E5CA4",
        -- targets,
        [6] = "2109291430026425248",
        -- usePhysVelocity,
        [7] = false,
        -- useSmallestAngleDiff,
        [8] = true,
    };
    return params;
end;

function export:OnEnter_box_PositionModifier_v2_25()
    local params;
    DrawTextToScreen("Comment: OPEN ARENA GATES", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'PositionModifier_v2')-- Comment: OPEN ARENA GATES");
    params = {
        -- blendTime,
        [1] = 3,
        -- endTarget,
        [4] = "2107769851647887982",
        -- players,
        [5] = "#5B9E5CA4",
        -- targets,
        [6] = "2108417622151279377",
        -- usePhysVelocity,
        [7] = false,
        -- useSmallestAngleDiff,
        [8] = true,
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_8()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_8");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b10.domino|@MIS_330_DoorManager|1435578902");
    l0:SetConnections({
        -- A_is_True,
        [2] = self.f_box_Compare_Boolean_8_A_is_True,
    });
    params = {
        -- A,
        [0] = PersistentGlobals.mis_330_b10.b_Derby_VIPEntrance_Opened,
    };
    return params;
end;

function export:OnEnter_box_Bind_v4_6()
    local params;
    params = {
        -- EntityA,
        [1] = "2109291430026425248",
        -- EntityB,
        [2] = "2109775390613454892",
        -- IsMultiBeatBind,
        [3] = false,
        -- PositionOnly,
        [4] = false,
        -- RemoveOffset,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_PositionModifier_v2_20()
    local params;
    params = {
        -- blendTime,
        [1] = 3,
        -- endTarget,
        [4] = "2107769859126332022",
        -- players,
        [5] = "#5B9E5CA4",
        -- targets,
        [6] = "2108417660826956567",
        -- usePhysVelocity,
        [7] = false,
        -- useSmallestAngleDiff,
        [8] = true,
    };
    return params;
end;

function export:OnEnter_box_NavLinkModifier_29()
    local params;
    params = {
        -- Entity,
        [0] = "2108695974183439886",
    };
    return params;
end;

function export:OnEnter_box_PositionModifier_v2_22()
    local params;
    params = {
        -- blendTime,
        [1] = 3,
        -- endTarget,
        [4] = "2107769857524107890",
        -- players,
        [5] = "#5B9E5CA4",
        -- targets,
        [6] = "2108417660826956567",
        -- usePhysVelocity,
        [7] = false,
        -- useSmallestAngleDiff,
        [8] = true,
    };
    return params;
end;

function export:OnEnter_box_Bind_v4_16()
    local params;
    params = {
        -- EntityA,
        [1] = "2109291430026425248",
        -- EntityB,
        [2] = "2109775390613454892",
        -- IsMultiBeatBind,
        [3] = false,
        -- PositionOnly,
        [4] = false,
        -- RemoveOffset,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_7()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_7");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b10.domino|@MIS_330_DoorManager|1639435679");
    l0:SetConnections({
        -- A_is_False,
        [1] = self.f_box_Compare_Boolean_7_A_is_False,
        -- A_is_True,
        [2] = self.f_box_Compare_Boolean_7_A_is_True,
    });
    params = {
        -- A,
        [0] = PersistentGlobals.mis_330_b10.b_Derby_VIPExit_Opened,
    };
    return params;
end;

function export:OnEnter_box_NavLinkModifier_19()
    local params;
    params = {
        -- Entity,
        [0] = "2107826015282665246",
    };
    return params;
end;

function export:OnEnter_box_NavLinkModifier_17()
    local params;
    params = {
        -- Entity,
        [0] = "2107727881225377880",
    };
    return params;
end;

function export:OnEnter_box_Bind_v4_15()
    local params;
    params = {
        -- EntityA,
        [1] = "2109291425278473114",
        -- EntityB,
        [2] = "2109775384026300458",
        -- IsMultiBeatBind,
        [3] = false,
        -- PositionOnly,
        [4] = false,
        -- RemoveOffset,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_PositionModifier_v2_24()
    local params;
    params = {
        -- blendTime,
        [1] = 3,
        -- endTarget,
        [4] = "2109303787498779133",
        -- players,
        [5] = "#5B9E5CA4",
        -- targets,
        [6] = "2108350971519185330",
        -- usePhysVelocity,
        [7] = false,
        -- useSmallestAngleDiff,
        [8] = true,
    };
    return params;
end;

-- Empty out anchor definitions
function export:Opened_Door()
    
end;
function export:Out()
    
end;
_compilerVersion = 60;
<DominoMetadata IsStateless="0" IsSystem="0">
	<ControlsIn>
		<ControlIn Name="Enable" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
	</ControlsIn>
	<ControlsOut>
		<ControlOut Name="Opened_Door" AnchorDynType="0" IsDelayed="0" />
		<ControlOut Name="Out" AnchorDynType="0" IsDelayed="0" />
	</ControlsOut>
	<DatasIn />
	<DatasOut />
</DominoMetadata>
