LUAC��  -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/bowmore_main/bowmore_activities/act3/mis_320/mis_320_b10.domino
-- User graph: MIS_320_DoorManager
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
        cboxRes:RegisterGlobals("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_320/mis_320_b10.globals.lua");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_320/mis_320_b10.MIS_320_DoorManager.debug.lua")] = {
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
    self._name = "MIS_320_DoorManager";
    self._elementPathId = "DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b10.domino|@MIS_320_DoorManager";
    self.Out = DummyFunction;
    self.Opened_Door = DummyFunction;
    self.box_PositionModifier_v2_32 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_32;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_32");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b10.domino|@MIS_320_DoorManager|47725575");
    l0:SetConnections({
        -- Done,
        [1] = self.f_box_PositionModifier_v2_32_Done,
        -- StartOut,
        [2] = self.f_box_PositionModifier_v2_32_StartOut,
    });
    self.box_NavLinkModifier_33 = cbox:CreateBox("Domino/System/AI/NavLinkModifier.lua");
    l0 = self.box_NavLinkModifier_33;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NavLinkModifier_33");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b10.domino|@MIS_320_DoorManager|181612202");
    l0:SetConnections({
    });
    self.box_PositionModifier_v2_8 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_8;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_8");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b10.domino|@MIS_320_DoorManager|323065643");
    l0:SetConnections({
        -- Done,
        [1] = self.f_box_PositionModifier_v2_8_Done,
        -- StartOut,
        [2] = self.f_box_PositionModifier_v2_8_StartOut,
    });
    self.box_NavLinkModifier_25 = cbox:CreateBox("Domino/System/AI/NavLinkModifier.lua");
    l0 = self.box_NavLinkModifier_25;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NavLinkModifier_25");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b10.domino|@MIS_320_DoorManager|479551759");
    l0:SetConnections({
    });
    self.box_NavLinkModifier_13 = cbox:CreateBox("Domino/System/AI/NavLinkModifier.lua");
    l0 = self.box_NavLinkModifier_13;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NavLinkModifier_13");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b10.domino|@MIS_320_DoorManager|546120876");
    l0:SetConnections({
        -- Deactivated,
        [1] = self.f_box_NavLinkModifier_13_Deactivated,
    });
    self.box_Bind_v4_22 = cbox:CreateBox("Domino/System/Bind_v4.lua");
    l0 = self.box_Bind_v4_22;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Bind_v4_22");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b10.domino|@MIS_320_DoorManager|619782825");
    l0:SetConnections({
        -- Bound,
        [0] = self.f_box_Bind_v4_22_Bound,
    });
    self.box_PositionModifier_v2_14 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_14;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_14");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b10.domino|@MIS_320_DoorManager|690898527");
    l0:SetConnections({
        -- StartOut,
        [2] = self.f_box_PositionModifier_v2_14_StartOut,
    });
    self.box_NavLinkModifier_9 = cbox:CreateBox("Domino/System/AI/NavLinkModifier.lua");
    l0 = self.box_NavLinkModifier_9;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NavLinkModifier_9");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b10.domino|@MIS_320_DoorManager|746208848");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_NavLinkModifier_9_Activated,
    });
    self.box_Bind_v4_20 = cbox:CreateBox("Domino/System/Bind_v4.lua");
    l0 = self.box_Bind_v4_20;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Bind_v4_20");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b10.domino|@MIS_320_DoorManager|989613351");
    l0:SetConnections({
        -- Bound,
        [0] = self.f_box_Bind_v4_20_Bound,
    });
    self.box_PositionModifier_v2_16 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_16;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_16");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b10.domino|@MIS_320_DoorManager|1048839729");
    l0:SetConnections({
        -- Done,
        [1] = self.f_box_PositionModifier_v2_16_Done,
    });
    self.box_PositionModifier_v2_21 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_21;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_21");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b10.domino|@MIS_320_DoorManager|1100331149");
    l0:SetConnections({
        -- Done,
        [1] = self.f_box_PositionModifier_v2_21_Done,
    });
    self.box_PositionModifier_v2_28 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_28;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_28");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b10.domino|@MIS_320_DoorManager|1234167394");
    l0:SetConnections({
        -- Done,
        [1] = self.f_box_PositionModifier_v2_28_Done,
        -- StartOut,
        [2] = self.f_box_PositionModifier_v2_28_StartOut,
    });
    self.box_PositionModifier_v2_24 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_24;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_24");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b10.domino|@MIS_320_DoorManager|1264850613");
    l0:SetConnections({
        -- Done,
        [1] = self.f_box_PositionModifier_v2_24_Done,
    });
    self.box_NavLinkModifier_18 = cbox:CreateBox("Domino/System/AI/NavLinkModifier.lua");
    l0 = self.box_NavLinkModifier_18;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NavLinkModifier_18");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b10.domino|@MIS_320_DoorManager|1384101672");
    l0:SetConnections({
        -- Deactivated,
        [1] = self.f_box_NavLinkModifier_18_Deactivated,
    });
    self.box_NavLinkModifier_31 = cbox:CreateBox("Domino/System/AI/NavLinkModifier.lua");
    l0 = self.box_NavLinkModifier_31;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NavLinkModifier_31");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b10.domino|@MIS_320_DoorManager|1441944857");
    l0:SetConnections({
    });
    self.box_PositionModifier_v2_19 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_19;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_19");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b10.domino|@MIS_320_DoorManager|1482517401");
    l0:SetConnections({
        -- Done,
        [1] = self.f_box_PositionModifier_v2_19_Done,
    });
    self.box_NavLinkModifier_29 = cbox:CreateBox("Domino/System/AI/NavLinkModifier.lua");
    l0 = self.box_NavLinkModifier_29;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NavLinkModifier_29");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b10.domino|@MIS_320_DoorManager|1489456656");
    l0:SetConnections({
    });
    self.box_NavLinkModifier_12 = cbox:CreateBox("Domino/System/AI/NavLinkModifier.lua");
    l0 = self.box_NavLinkModifier_12;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NavLinkModifier_12");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b10.domino|@MIS_320_DoorManager|1556333305");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_NavLinkModifier_12_Activated,
    });
    self.box_NavLinkModifier_27 = cbox:CreateBox("Domino/System/AI/NavLinkModifier.lua");
    l0 = self.box_NavLinkModifier_27;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NavLinkModifier_27");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b10.domino|@MIS_320_DoorManager|1603539561");
    l0:SetConnections({
    });
    self.box_PositionModifier_v2_10 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_10;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_10");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b10.domino|@MIS_320_DoorManager|1627330046");
    l0:SetConnections({
        -- StartOut,
        [2] = self.f_box_PositionModifier_v2_10_StartOut,
    });
    self.box_PositionModifier_v2_26 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_26;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_26");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b10.domino|@MIS_320_DoorManager|1753335325");
    l0:SetConnections({
        -- Done,
        [1] = self.f_box_PositionModifier_v2_26_Done,
        -- StartOut,
        [2] = self.f_box_PositionModifier_v2_26_StartOut,
    });
    self.box_PositionModifier_v2_17 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_17;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_17");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b10.domino|@MIS_320_DoorManager|1765648848");
    l0:SetConnections({
        -- Done,
        [1] = self.f_box_PositionModifier_v2_17_Done,
        -- StartOut,
        [2] = self.f_box_PositionModifier_v2_17_StartOut,
    });
    self.box_NavLinkModifier_15 = cbox:CreateBox("Domino/System/AI/NavLinkModifier.lua");
    l0 = self.box_NavLinkModifier_15;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NavLinkModifier_15");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b10.domino|@MIS_320_DoorManager|1780387173");
    l0:SetConnections({
    });
    self.box_NavLinkModifier_35 = cbox:CreateBox("Domino/System/AI/NavLinkModifier.lua");
    l0 = self.box_NavLinkModifier_35;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NavLinkModifier_35");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b10.domino|@MIS_320_DoorManager|1788928489");
    l0:SetConnections({
    });
    self.box_NavLinkModifier_11 = cbox:CreateBox("Domino/System/AI/NavLinkModifier.lua");
    l0 = self.box_NavLinkModifier_11;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NavLinkModifier_11");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b10.domino|@MIS_320_DoorManager|1842865823");
    l0:SetConnections({
    });
    self.box_PositionModifier_v2_30 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_30;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_30");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b10.domino|@MIS_320_DoorManager|2019526004");
    l0:SetConnections({
        -- Done,
        [1] = self.f_box_PositionModifier_v2_30_Done,
        -- StartOut,
        [2] = self.f_box_PositionModifier_v2_30_StartOut,
    });
    self.box_PositionModifier_v2_34 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_34;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_34");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b10.domino|@MIS_320_DoorManager|2113032964");
    l0:SetConnections({
        -- Done,
        [1] = self.f_box_PositionModifier_v2_34_Done,
        -- StartOut,
        [2] = self.f_box_PositionModifier_v2_34_StartOut,
    });
    self.box_PositionModifier_v2_23 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_23;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_23");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b10.domino|@MIS_320_DoorManager|2118130143");
    l0:SetConnections({
        -- Done,
        [1] = self.f_box_PositionModifier_v2_23_Done,
        -- StartOut,
        [2] = self.f_box_PositionModifier_v2_23_StartOut,
    });
end;

function export:Enable()
    local params, l0;
    params = self:OnEnter_box_OutputOrder_v2_7();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b10.domino|@MIS_320_DoorManager|245959005", "245959005", "MIS_320_DoorManager", "Enable", "box_OutputOrder_v2_7.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_36_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b10.domino|@MIS_320_DoorManager|1437881703", "1437881703", "MIS_320_DoorManager", "box_Simple_Node_36.Out", "Opened Door", clone:GetLuaBox(), self);
    self:Opened_Door();
end;

function export:f_box_PositionModifier_v2_32_Done()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_36();
    l0 = self.box_PositionModifier_v2_32;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b10.domino|@MIS_320_DoorManager|963836781", "963836781", "MIS_320_DoorManager", "box_PositionModifier_v2_32.Done", "box_Simple_Node_36.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PositionModifier_v2_32_StartOut()
    local params, l0, l1;
    params = self:OnEnter_box_NavLinkModifier_33();
    l0 = self.box_PositionModifier_v2_32;
    l1 = self.box_NavLinkModifier_33;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b10.domino|@MIS_320_DoorManager|1749230581", "1749230581", "MIS_320_DoorManager", "box_PositionModifier_v2_32.StartOut", "box_NavLinkModifier_33.Activate", l0:GetLuaBox(), l1:GetLuaBox());
    -- Activate
    l1:Exec(0, params);
end;

function export:f_box_PositionModifier_v2_8_Done()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_36();
    l0 = self.box_PositionModifier_v2_8;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b10.domino|@MIS_320_DoorManager|1350941264", "1350941264", "MIS_320_DoorManager", "box_PositionModifier_v2_8.Done", "box_Simple_Node_36.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PositionModifier_v2_8_StartOut()
    local params, l0, l1;
    params = self:OnEnter_box_NavLinkModifier_12();
    l0 = self.box_PositionModifier_v2_8;
    l1 = self.box_NavLinkModifier_12;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b10.domino|@MIS_320_DoorManager|110293042", "110293042", "MIS_320_DoorManager", "box_PositionModifier_v2_8.StartOut", "box_NavLinkModifier_12.Activate", l0:GetLuaBox(), l1:GetLuaBox());
    -- Activate
    l1:Exec(0, params);
end;

function export:f_box_NavLinkModifier_13_Deactivated()
    local params, l0, l1;
    params = self:OnEnter_box_NavLinkModifier_18();
    l0 = self.box_NavLinkModifier_13;
    l1 = self.box_NavLinkModifier_18;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b10.domino|@MIS_320_DoorManager|729724023", "729724023", "MIS_320_DoorManager", "box_NavLinkModifier_13.Deactivated", "box_NavLinkModifier_18.Deactivate", l0:GetLuaBox(), l1:GetLuaBox());
    -- Deactivate
    l1:Exec(1, params);
end;

function export:f_box_Compare_Boolean_1_A_is_False()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_PositionModifier_v2_14();
    l0 = self.box_PositionModifier_v2_14;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b10.domino|@MIS_320_DoorManager|1567227604", "1567227604", "MIS_320_DoorManager", "box_Compare_Boolean_1.A_is_False", "box_PositionModifier_v2_14.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(1, params);
end;

function export:f_box_Compare_Boolean_1_A_is_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_PositionModifier_v2_10();
    l0 = self.box_PositionModifier_v2_10;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b10.domino|@MIS_320_DoorManager|1551149130", "1551149130", "MIS_320_DoorManager", "box_Compare_Boolean_1.A_is_True", "box_PositionModifier_v2_10.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(1, params);
end;

function export:f_box_Bind_v4_22_Bound()
    local params, l0, l1;
    params = self:OnEnter_box_PositionModifier_v2_21();
    l0 = self.box_Bind_v4_22;
    l1 = self.box_PositionModifier_v2_21;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b10.domino|@MIS_320_DoorManager|1463180123", "1463180123", "MIS_320_DoorManager", "box_Bind_v4_22.Bound", "box_PositionModifier_v2_21.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(1, params);
end;

function export:f_box_PositionModifier_v2_14_StartOut()
    local params, l0, l1;
    params = self:OnEnter_box_PositionModifier_v2_17();
    l0 = self.box_PositionModifier_v2_14;
    l1 = self.box_PositionModifier_v2_17;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b10.domino|@MIS_320_DoorManager|845831868", "845831868", "MIS_320_DoorManager", "box_PositionModifier_v2_14.StartOut", "box_PositionModifier_v2_17.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(1, params);
end;

function export:f_box_NavLinkModifier_9_Activated()
    local params, l0, l1;
    params = self:OnEnter_box_NavLinkModifier_11();
    l0 = self.box_NavLinkModifier_9;
    l1 = self.box_NavLinkModifier_11;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b10.domino|@MIS_320_DoorManager|1076494885", "1076494885", "MIS_320_DoorManager", "box_NavLinkModifier_9.Activated", "box_NavLinkModifier_11.Activate", l0:GetLuaBox(), l1:GetLuaBox());
    -- Activate
    l1:Exec(0, params);
end;

function export:f_box_Compare_Boolean_4_A_is_False()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_PositionModifier_v2_26();
    l0 = self.box_PositionModifier_v2_26;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b10.domino|@MIS_320_DoorManager|1569705601", "1569705601", "MIS_320_DoorManager", "box_Compare_Boolean_4.A_is_False", "box_PositionModifier_v2_26.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(1, params);
end;

function export:f_box_Compare_Boolean_4_A_is_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_PositionModifier_v2_28();
    l0 = self.box_PositionModifier_v2_28;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b10.domino|@MIS_320_DoorManager|2002875391", "2002875391", "MIS_320_DoorManager", "box_Compare_Boolean_4.A_is_True", "box_PositionModifier_v2_28.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(1, params);
end;

function export:f_box_Bind_v4_20_Bound()
    local params, l0, l1;
    params = self:OnEnter_box_PositionModifier_v2_16();
    l0 = self.box_Bind_v4_20;
    l1 = self.box_PositionModifier_v2_16;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b10.domino|@MIS_320_DoorManager|2074750454", "2074750454", "MIS_320_DoorManager", "box_Bind_v4_20.Bound", "box_PositionModifier_v2_16.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(1, params);
end;

function export:f_box_PositionModifier_v2_16_Done()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_36();
    l0 = self.box_PositionModifier_v2_16;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b10.domino|@MIS_320_DoorManager|183673045", "183673045", "MIS_320_DoorManager", "box_PositionModifier_v2_16.Done", "box_Simple_Node_36.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PositionModifier_v2_21_Done()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_36();
    l0 = self.box_PositionModifier_v2_21;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b10.domino|@MIS_320_DoorManager|1661267127", "1661267127", "MIS_320_DoorManager", "box_PositionModifier_v2_21.Done", "box_Simple_Node_36.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PositionModifier_v2_28_Done()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_36();
    l0 = self.box_PositionModifier_v2_28;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b10.domino|@MIS_320_DoorManager|1360289407", "1360289407", "MIS_320_DoorManager", "box_PositionModifier_v2_28.Done", "box_Simple_Node_36.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PositionModifier_v2_28_StartOut()
    local params, l0, l1;
    params = self:OnEnter_box_NavLinkModifier_29();
    l0 = self.box_PositionModifier_v2_28;
    l1 = self.box_NavLinkModifier_29;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b10.domino|@MIS_320_DoorManager|473107655", "473107655", "MIS_320_DoorManager", "box_PositionModifier_v2_28.StartOut", "box_NavLinkModifier_29.Activate", l0:GetLuaBox(), l1:GetLuaBox());
    -- Activate
    l1:Exec(0, params);
end;

function export:f_box_PositionModifier_v2_24_Done()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_36();
    l0 = self.box_PositionModifier_v2_24;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b10.domino|@MIS_320_DoorManager|451647341", "451647341", "MIS_320_DoorManager", "box_PositionModifier_v2_24.Done", "box_Simple_Node_36.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Compare_Boolean_3_A_is_False()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_PositionModifier_v2_30();
    l0 = self.box_PositionModifier_v2_30;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b10.domino|@MIS_320_DoorManager|1669504600", "1669504600", "MIS_320_DoorManager", "box_Compare_Boolean_3.A_is_False", "box_PositionModifier_v2_30.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(1, params);
end;

function export:f_box_Compare_Boolean_3_A_is_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_PositionModifier_v2_23();
    l0 = self.box_PositionModifier_v2_23;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b10.domino|@MIS_320_DoorManager|1887375130", "1887375130", "MIS_320_DoorManager", "box_Compare_Boolean_3.A_is_True", "box_PositionModifier_v2_23.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(1, params);
end;

function export:f_box_NavLinkModifier_18_Deactivated()
    local params, l0, l1;
    params = self:OnEnter_box_NavLinkModifier_15();
    l0 = self.box_NavLinkModifier_18;
    l1 = self.box_NavLinkModifier_15;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b10.domino|@MIS_320_DoorManager|1633364738", "1633364738", "MIS_320_DoorManager", "box_NavLinkModifier_18.Deactivated", "box_NavLinkModifier_15.Deactivate", l0:GetLuaBox(), l1:GetLuaBox());
    -- Deactivate
    l1:Exec(1, params);
end;

function export:f_box_PositionModifier_v2_19_Done()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_36();
    l0 = self.box_PositionModifier_v2_19;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b10.domino|@MIS_320_DoorManager|459611561", "459611561", "MIS_320_DoorManager", "box_PositionModifier_v2_19.Done", "box_Simple_Node_36.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Compare_Boolean_6_A_is_False()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_PositionModifier_v2_19();
    l0 = self.box_PositionModifier_v2_19;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b10.domino|@MIS_320_DoorManager|1311261674", "1311261674", "MIS_320_DoorManager", "box_Compare_Boolean_6.A_is_False", "box_PositionModifier_v2_19.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(1, params);
end;

function export:f_box_Compare_Boolean_6_A_is_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_PositionModifier_v2_24();
    l0 = self.box_PositionModifier_v2_24;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b10.domino|@MIS_320_DoorManager|906119390", "906119390", "MIS_320_DoorManager", "box_Compare_Boolean_6.A_is_True", "box_PositionModifier_v2_24.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(1, params);
end;

function export:f_box_NavLinkModifier_12_Activated()
    local params, l0, l1;
    params = self:OnEnter_box_NavLinkModifier_9();
    l0 = self.box_NavLinkModifier_12;
    l1 = self.box_NavLinkModifier_9;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b10.domino|@MIS_320_DoorManager|878717473", "878717473", "MIS_320_DoorManager", "box_NavLinkModifier_12.Activated", "box_NavLinkModifier_9.Activate", l0:GetLuaBox(), l1:GetLuaBox());
    -- Activate
    l1:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_7_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b10.domino|@MIS_320_DoorManager|246171793", "246171793", "MIS_320_DoorManager", "box_OutputOrder_v2_7.Out", "Out", clone:GetLuaBox(), self);
    self:Out();
end;

function export:f_box_OutputOrder_v2_7_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Boolean_1();
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b10.domino|@MIS_320_DoorManager|1563813188", "1563813188", "MIS_320_DoorManager", "box_OutputOrder_v2_7.Out", "box_Compare_Boolean_1.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_7_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Boolean_2();
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b10.domino|@MIS_320_DoorManager|2133743651", "2133743651", "MIS_320_DoorManager", "box_OutputOrder_v2_7.Out", "box_Compare_Boolean_2.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_7_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Boolean_6();
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b10.domino|@MIS_320_DoorManager|1986225825", "1986225825", "MIS_320_DoorManager", "box_OutputOrder_v2_7.Out", "box_Compare_Boolean_6.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_7_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Boolean_3();
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b10.domino|@MIS_320_DoorManager|1606994541", "1606994541", "MIS_320_DoorManager", "box_OutputOrder_v2_7.Out", "box_Compare_Boolean_3.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_7_Out_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Boolean_4();
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b10.domino|@MIS_320_DoorManager|1398786214", "1398786214", "MIS_320_DoorManager", "box_OutputOrder_v2_7.Out", "box_Compare_Boolean_4.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_7_Out_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Boolean_5();
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b10.domino|@MIS_320_DoorManager|1729053419", "1729053419", "MIS_320_DoorManager", "box_OutputOrder_v2_7.Out", "box_Compare_Boolean_5.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_PositionModifier_v2_10_StartOut()
    local params, l0, l1;
    params = self:OnEnter_box_PositionModifier_v2_8();
    l0 = self.box_PositionModifier_v2_10;
    l1 = self.box_PositionModifier_v2_8;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b10.domino|@MIS_320_DoorManager|573817133", "573817133", "MIS_320_DoorManager", "box_PositionModifier_v2_10.StartOut", "box_PositionModifier_v2_8.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(1, params);
end;

function export:f_box_Compare_Boolean_5_A_is_False()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_PositionModifier_v2_34();
    l0 = self.box_PositionModifier_v2_34;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b10.domino|@MIS_320_DoorManager|332122189", "332122189", "MIS_320_DoorManager", "box_Compare_Boolean_5.A_is_False", "box_PositionModifier_v2_34.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(1, params);
end;

function export:f_box_Compare_Boolean_5_A_is_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_PositionModifier_v2_32();
    l0 = self.box_PositionModifier_v2_32;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b10.domino|@MIS_320_DoorManager|578020225", "578020225", "MIS_320_DoorManager", "box_Compare_Boolean_5.A_is_True", "box_PositionModifier_v2_32.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(1, params);
end;

function export:f_box_Compare_Boolean_2_A_is_False()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_Bind_v4_20();
    l0 = self.box_Bind_v4_20;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b10.domino|@MIS_320_DoorManager|1655426304", "1655426304", "MIS_320_DoorManager", "box_Compare_Boolean_2.A_is_False", "box_Bind_v4_20.Bind", clone:GetLuaBox(), l0:GetLuaBox());
    -- Bind
    l0:Exec(0, params);
end;

function export:f_box_Compare_Boolean_2_A_is_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_Bind_v4_22();
    l0 = self.box_Bind_v4_22;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b10.domino|@MIS_320_DoorManager|751110364", "751110364", "MIS_320_DoorManager", "box_Compare_Boolean_2.A_is_True", "box_Bind_v4_22.Bind", clone:GetLuaBox(), l0:GetLuaBox());
    -- Bind
    l0:Exec(0, params);
end;

function export:f_box_PositionModifier_v2_26_Done()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_36();
    l0 = self.box_PositionModifier_v2_26;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b10.domino|@MIS_320_DoorManager|1187185465", "1187185465", "MIS_320_DoorManager", "box_PositionModifier_v2_26.Done", "box_Simple_Node_36.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PositionModifier_v2_26_StartOut()
    local params, l0, l1;
    params = self:OnEnter_box_NavLinkModifier_25();
    l0 = self.box_PositionModifier_v2_26;
    l1 = self.box_NavLinkModifier_25;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b10.domino|@MIS_320_DoorManager|1547691387", "1547691387", "MIS_320_DoorManager", "box_PositionModifier_v2_26.StartOut", "box_NavLinkModifier_25.Deactivate", l0:GetLuaBox(), l1:GetLuaBox());
    -- Deactivate
    l1:Exec(1, params);
end;

function export:f_box_PositionModifier_v2_17_Done()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_36();
    l0 = self.box_PositionModifier_v2_17;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b10.domino|@MIS_320_DoorManager|210208369", "210208369", "MIS_320_DoorManager", "box_PositionModifier_v2_17.Done", "box_Simple_Node_36.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PositionModifier_v2_17_StartOut()
    local params, l0, l1;
    params = self:OnEnter_box_NavLinkModifier_13();
    l0 = self.box_PositionModifier_v2_17;
    l1 = self.box_NavLinkModifier_13;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b10.domino|@MIS_320_DoorManager|1389281827", "1389281827", "MIS_320_DoorManager", "box_PositionModifier_v2_17.StartOut", "box_NavLinkModifier_13.Deactivate", l0:GetLuaBox(), l1:GetLuaBox());
    -- Deactivate
    l1:Exec(1, params);
end;

function export:f_box_PositionModifier_v2_30_Done()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_36();
    l0 = self.box_PositionModifier_v2_30;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b10.domino|@MIS_320_DoorManager|472644442", "472644442", "MIS_320_DoorManager", "box_PositionModifier_v2_30.Done", "box_Simple_Node_36.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PositionModifier_v2_30_StartOut()
    local params, l0, l1;
    params = self:OnEnter_box_NavLinkModifier_31();
    l0 = self.box_PositionModifier_v2_30;
    l1 = self.box_NavLinkModifier_31;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b10.domino|@MIS_320_DoorManager|871997842", "871997842", "MIS_320_DoorManager", "box_PositionModifier_v2_30.StartOut", "box_NavLinkModifier_31.Deactivate", l0:GetLuaBox(), l1:GetLuaBox());
    -- Deactivate
    l1:Exec(1, params);
end;

function export:f_box_PositionModifier_v2_34_Done()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_36();
    l0 = self.box_PositionModifier_v2_34;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b10.domino|@MIS_320_DoorManager|864171866", "864171866", "MIS_320_DoorManager", "box_PositionModifier_v2_34.Done", "box_Simple_Node_36.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PositionModifier_v2_34_StartOut()
    local params, l0, l1;
    params = self:OnEnter_box_NavLinkModifier_35();
    l0 = self.box_PositionModifier_v2_34;
    l1 = self.box_NavLinkModifier_35;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b10.domino|@MIS_320_DoorManager|1573032569", "1573032569", "MIS_320_DoorManager", "box_PositionModifier_v2_34.StartOut", "box_NavLinkModifier_35.Deactivate", l0:GetLuaBox(), l1:GetLuaBox());
    -- Deactivate
    l1:Exec(1, params);
end;

function export:f_box_PositionModifier_v2_23_Done()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_36();
    l0 = self.box_PositionModifier_v2_23;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b10.domino|@MIS_320_DoorManager|755381881", "755381881", "MIS_320_DoorManager", "box_PositionModifier_v2_23.Done", "box_Simple_Node_36.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PositionModifier_v2_23_StartOut()
    local params, l0, l1;
    params = self:OnEnter_box_NavLinkModifier_27();
    l0 = self.box_PositionModifier_v2_23;
    l1 = self.box_NavLinkModifier_27;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b10.domino|@MIS_320_DoorManager|1355675328", "1355675328", "MIS_320_DoorManager", "box_PositionModifier_v2_23.StartOut", "box_NavLinkModifier_27.Activate", l0:GetLuaBox(), l1:GetLuaBox());
    -- Activate
    l1:Exec(0, params);
end;

function export:OnEnter_box_Simple_Node_36()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_36");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b10.domino|@MIS_320_DoorManager|@n_Opened");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_36_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_PositionModifier_v2_32()
    local params;
    DrawTextToScreen("Comment: OPEN COURTYARD OUTSIDE GATE", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'PositionModifier_v2')-- Comment: OPEN COURTYARD OUTSIDE GATE");
    params = {
        -- blendTime,
        [1] = 3,
        -- endTarget,
        [4] = "2108250910909017599",
        -- players,
        [5] = "#5B9E5CA4",
        -- targets,
        [6] = "2108250903306841592",
        -- usePhysVelocity,
        [7] = false,
        -- useSmallestAngleDiff,
        [8] = true,
    };
    return params;
end;

function export:OnEnter_box_NavLinkModifier_33()
    local params;
    params = {
        -- Entity,
        [0] = "2108251069258673737",
    };
    return params;
end;

function export:OnEnter_box_PositionModifier_v2_8()
    local params;
    params = {
        -- blendTime,
        [1] = 3,
        -- endTarget,
        [4] = "2109001357208928485",
        -- players,
        [5] = "#5B9E5CA4",
        -- targets,
        [6] = "2108833885333761473",
        -- usePhysVelocity,
        [7] = false,
        -- useSmallestAngleDiff,
        [8] = true,
    };
    return params;
end;

function export:OnEnter_box_NavLinkModifier_25()
    local params;
    params = {
        -- Entity,
        [0] = "2108251072496676429",
    };
    return params;
end;

function export:OnEnter_box_NavLinkModifier_13()
    local params;
    params = {
        -- Entity,
        [0] = "2101065785496578493",
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_1");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b10.domino|@MIS_320_DoorManager|600362829");
    l0:SetConnections({
        -- A_is_False,
        [1] = self.f_box_Compare_Boolean_1_A_is_False,
        -- A_is_True,
        [2] = self.f_box_Compare_Boolean_1_A_is_True,
    });
    params = {
        -- A,
        [0] = PersistentGlobals.mis_320_b10.b_Prison_FrontGate_Opened,
    };
    return params;
end;

function export:OnEnter_box_Bind_v4_22()
    local params;
    params = {
        -- EntityA,
        [1] = "2107080565074168781",
        -- EntityB,
        [2] = "2109219152657927316",
        -- IsMultiBeatBind,
        [3] = false,
        -- PositionOnly,
        [4] = false,
        -- RemoveOffset,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_PositionModifier_v2_14()
    local params;
    DrawTextToScreen("Comment: CLOSE PRISON GATES", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'PositionModifier_v2')-- Comment: CLOSE PRISON GATES");
    params = {
        -- blendTime,
        [1] = 3,
        -- endTarget,
        [4] = "2106703402707722746",
        -- players,
        [5] = "#5B9E5CA4",
        -- targets,
        [6] = "2103786170283483231",
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
        [0] = "2101065775749015994",
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_4");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b10.domino|@MIS_320_DoorManager|818688123");
    l0:SetConnections({
        -- A_is_False,
        [1] = self.f_box_Compare_Boolean_4_A_is_False,
        -- A_is_True,
        [2] = self.f_box_Compare_Boolean_4_A_is_True,
    });
    params = {
        -- A,
        [0] = PersistentGlobals.mis_320_b10.b_Prison_InsideCourtyardGate_Opened,
    };
    return params;
end;

function export:OnEnter_box_Bind_v4_20()
    local params;
    params = {
        -- EntityA,
        [1] = "2107080565074168781",
        -- EntityB,
        [2] = "2109219152657927316",
        -- IsMultiBeatBind,
        [3] = false,
        -- PositionOnly,
        [4] = false,
        -- RemoveOffset,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_PositionModifier_v2_16()
    local params;
    DrawTextToScreen("Comment: CLOSE PRISON ENTRANCE", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'PositionModifier_v2')-- Comment: CLOSE PRISON ENTRANCE");
    params = {
        -- blendTime,
        [1] = 2,
        -- endTarget,
        [4] = "2107076763747095810",
        -- players,
        [5] = "#5B9E5CA4",
        -- targets,
        [6] = "2107080565074168781",
        -- usePhysVelocity,
        [7] = false,
        -- useSmallestAngleDiff,
        [8] = true,
    };
    return params;
end;

function export:OnEnter_box_PositionModifier_v2_21()
    local params;
    DrawTextToScreen("Comment: OPEN PRISON ENTRANCE", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'PositionModifier_v2')-- Comment: OPEN PRISON ENTRANCE");
    params = {
        -- blendTime,
        [1] = 3,
        -- endTarget,
        [4] = "2108833759779379556",
        -- players,
        [5] = "#5B9E5CA4",
        -- targets,
        [6] = "2107080565074168781",
        -- usePhysVelocity,
        [7] = false,
        -- useSmallestAngleDiff,
        [8] = true,
    };
    return params;
end;

function export:OnEnter_box_PositionModifier_v2_28()
    local params;
    DrawTextToScreen("Comment: OPEN COURTYARD INSIDE GATE", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'PositionModifier_v2')-- Comment: OPEN COURTYARD INSIDE GATE");
    params = {
        -- blendTime,
        [1] = 3,
        -- endTarget,
        [4] = "2108250916118343179",
        -- players,
        [5] = "#5B9E5CA4",
        -- targets,
        [6] = "2108250896444960246",
        -- usePhysVelocity,
        [7] = false,
        -- useSmallestAngleDiff,
        [8] = true,
    };
    return params;
end;

function export:OnEnter_box_PositionModifier_v2_24()
    local params;
    DrawTextToScreen("Comment: OPEN CHECKPOINT", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'PositionModifier_v2')-- Comment: OPEN CHECKPOINT");
    params = {
        -- blendTime,
        [1] = 1,
        -- endTarget,
        [4] = "2108790681639102743",
        -- players,
        [5] = "#5B9E5CA4",
        -- targets,
        [6] = "2101562729056711374",
        -- usePhysVelocity,
        [7] = false,
        -- useSmallestAngleDiff,
        [8] = true,
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_3");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b10.domino|@MIS_320_DoorManager|1326901105");
    l0:SetConnections({
        -- A_is_False,
        [1] = self.f_box_Compare_Boolean_3_A_is_False,
        -- A_is_True,
        [2] = self.f_box_Compare_Boolean_3_A_is_True,
    });
    params = {
        -- A,
        [0] = PersistentGlobals.mis_320_b10.b_Prison_FactoryDoor_Opened,
    };
    return params;
end;

function export:OnEnter_box_NavLinkModifier_18()
    local params;
    params = {
        -- Entity,
        [0] = "2101065775749015994",
    };
    return params;
end;

function export:OnEnter_box_NavLinkModifier_31()
    local params;
    params = {
        -- Entity,
        [0] = "2109193424270810790",
    };
    return params;
end;

function export:OnEnter_box_PositionModifier_v2_19()
    local params;
    DrawTextToScreen("Comment: CLOSE CHECKPOINT", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'PositionModifier_v2')-- Comment: CLOSE CHECKPOINT");
    params = {
        -- blendTime,
        [1] = 1,
        -- endTarget,
        [4] = "2107919728096853461",
        -- players,
        [5] = "#5B9E5CA4",
        -- targets,
        [6] = "2101562729056711374",
        -- usePhysVelocity,
        [7] = false,
        -- useSmallestAngleDiff,
        [8] = true,
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_6");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b10.domino|@MIS_320_DoorManager|1486313466");
    l0:SetConnections({
        -- A_is_False,
        [1] = self.f_box_Compare_Boolean_6_A_is_False,
        -- A_is_True,
        [2] = self.f_box_Compare_Boolean_6_A_is_True,
    });
    params = {
        -- A,
        [0] = PersistentGlobals.mis_320_b10.b_Prison_CheckpointDoor_Opened,
    };
    return params;
end;

function export:OnEnter_box_NavLinkModifier_29()
    local params;
    params = {
        -- Entity,
        [0] = "2108251072496676429",
    };
    return params;
end;

function export:OnEnter_box_NavLinkModifier_12()
    local params;
    params = {
        -- Entity,
        [0] = "2101065785496578493",
    };
    return params;
end;

function export:OnEnter_box_NavLinkModifier_27()
    local params;
    params = {
        -- Entity,
        [0] = "2109193424270810790",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_7()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_7");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b10.domino|@MIS_320_DoorManager|1623127512");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
            [0] = 7,
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
                [2] = self.f_box_OutputOrder_v2_7_Out_2,
                [3] = self.f_box_OutputOrder_v2_7_Out_3,
                [4] = self.f_box_OutputOrder_v2_7_Out_4,
                [5] = self.f_box_OutputOrder_v2_7_Out_5,
                [6] = self.f_box_OutputOrder_v2_7_Out_6,
            },
            count = 7,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_PositionModifier_v2_10()
    local params;
    DrawTextToScreen("Comment: OPEN PRISON GATES", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'PositionModifier_v2')-- Comment: OPEN PRISON GATES");
    params = {
        -- blendTime,
        [1] = 3,
        -- endTarget,
        [4] = "2106703420304925229",
        -- players,
        [5] = "#5B9E5CA4",
        -- targets,
        [6] = "2103786170283483231",
        -- usePhysVelocity,
        [7] = false,
        -- useSmallestAngleDiff,
        [8] = true,
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_5");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b10.domino|@MIS_320_DoorManager|1636063624");
    l0:SetConnections({
        -- A_is_False,
        [1] = self.f_box_Compare_Boolean_5_A_is_False,
        -- A_is_True,
        [2] = self.f_box_Compare_Boolean_5_A_is_True,
    });
    params = {
        -- A,
        [0] = PersistentGlobals.mis_320_b10.b_Prison_OutsideCourtyardGate_Opened,
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_2");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b10.domino|@MIS_320_DoorManager|1715626479");
    l0:SetConnections({
        -- A_is_False,
        [1] = self.f_box_Compare_Boolean_2_A_is_False,
        -- A_is_True,
        [2] = self.f_box_Compare_Boolean_2_A_is_True,
    });
    params = {
        -- A,
        [0] = PersistentGlobals.mis_320_b10.b_Prison_EntranceDoor_Opened,
    };
    return params;
end;

function export:OnEnter_box_PositionModifier_v2_26()
    local params;
    DrawTextToScreen("Comment: CLOSE COURTYARD INSIDE GATE", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'PositionModifier_v2')-- Comment: CLOSE COURTYARD INSIDE GATE");
    params = {
        -- blendTime,
        [1] = 3,
        -- endTarget,
        [4] = "2108250912997780999",
        -- players,
        [5] = "#5B9E5CA4",
        -- targets,
        [6] = "2108250896444960246",
        -- usePhysVelocity,
        [7] = false,
        -- useSmallestAngleDiff,
        [8] = true,
    };
    return params;
end;

function export:OnEnter_box_PositionModifier_v2_17()
    local params;
    params = {
        -- blendTime,
        [1] = 3,
        -- endTarget,
        [4] = "2109001355472486625",
        -- players,
        [5] = "#5B9E5CA4",
        -- targets,
        [6] = "2108833885333761473",
        -- usePhysVelocity,
        [7] = false,
        -- useSmallestAngleDiff,
        [8] = true,
    };
    return params;
end;

function export:OnEnter_box_NavLinkModifier_15()
    local params;
    params = {
        -- Entity,
        [0] = "2102518621673689319",
    };
    return params;
end;

function export:OnEnter_box_NavLinkModifier_35()
    local params;
    params = {
        -- Entity,
        [0] = "2108251069258673737",
    };
    return params;
end;

function export:OnEnter_box_NavLinkModifier_11()
    local params;
    params = {
        -- Entity,
        [0] = "2102518621673689319",
    };
    return params;
end;

function export:OnEnter_box_PositionModifier_v2_30()
    local params;
    DrawTextToScreen("Comment: CLOSE FACTORY CHECKPOINT DOOR", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'PositionModifier_v2')-- Comment: CLOSE FACTORY CHECKPOINT DOOR");
    params = {
        -- blendTime,
        [1] = 1,
        -- endTarget,
        [4] = "2109193456453705424",
        -- players,
        [5] = "#5B9E5CA4",
        -- targets,
        [6] = "2109193416708480677",
        -- usePhysVelocity,
        [7] = false,
        -- useSmallestAngleDiff,
        [8] = true,
    };
    return params;
end;

function export:OnEnter_box_PositionModifier_v2_34()
    local params;
    DrawTextToScreen("Comment: CLOSE COURTYARD OUTSIDE GATE", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'PositionModifier_v2')-- Comment: CLOSE COURTYARD OUTSIDE GATE");
    params = {
        -- blendTime,
        [1] = 3,
        -- endTarget,
        [4] = "2108250907991879163",
        -- players,
        [5] = "#5B9E5CA4",
        -- targets,
        [6] = "2108250903306841592",
        -- usePhysVelocity,
        [7] = false,
        -- useSmallestAngleDiff,
        [8] = true,
    };
    return params;
end;

function export:OnEnter_box_PositionModifier_v2_23()
    local params;
    DrawTextToScreen("Comment: OPEN FACTORY CHECKPOINT DOOR", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'PositionModifier_v2')-- Comment: OPEN FACTORY CHECKPOINT DOOR");
    params = {
        -- blendTime,
        [1] = 1,
        -- endTarget,
        [4] = "2109193463019888345",
        -- players,
        [5] = "#5B9E5CA4",
        -- targets,
        [6] = "2109193416708480677",
        -- usePhysVelocity,
        [7] = false,
        -- useSmallestAngleDiff,
        [8] = true,
    };
    return params;
end;

-- Empty out anchor definitions
function export:Out()
    
end;
function export:Opened_Door()
    
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
