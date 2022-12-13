LUACw  -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/bowmore_main/bowmore_activities/act3/mis_310/mis_310_b20.domino
-- User graph: MIS_310_COMMON_DisableNavlinks
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
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_310/mis_310_b20.MIS_310_COMMON_DisableNavlinks.debug.lua")] = {
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
end;

function export:Init(cbox)
    local l0;
    self._name = "MIS_310_COMMON_DisableNavlinks";
    self._elementPathId = "DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_COMMON_DisableNavlinks";
    self.Out = DummyFunction;
    self.box_NavLinkModifier_14 = cbox:CreateBox("Domino/System/AI/NavLinkModifier.lua");
    l0 = self.box_NavLinkModifier_14;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NavLinkModifier_14");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_COMMON_DisableNavlinks|161246452");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_NavLinkModifier_14_Activated,
        -- Deactivated,
        [1] = self.f_box_NavLinkModifier_14_Deactivated,
    });
    self.box_NavLinkModifier_8 = cbox:CreateBox("Domino/System/AI/NavLinkModifier.lua");
    l0 = self.box_NavLinkModifier_8;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NavLinkModifier_8");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_COMMON_DisableNavlinks|220634516");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_NavLinkModifier_8_Activated,
        -- Deactivated,
        [1] = self.f_box_NavLinkModifier_8_Deactivated,
    });
    self.box_NavLinkModifier_5 = cbox:CreateBox("Domino/System/AI/NavLinkModifier.lua");
    l0 = self.box_NavLinkModifier_5;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NavLinkModifier_5");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_COMMON_DisableNavlinks|236124058");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_NavLinkModifier_5_Activated,
        -- Deactivated,
        [1] = self.f_box_NavLinkModifier_5_Deactivated,
    });
    self.box_MultipleOR_4 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_4;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_4");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_COMMON_DisableNavlinks|390113787");
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
        [0] = self.f_box_MultipleOR_4_Out,
    });
    self.box_NavLinkModifier_10 = cbox:CreateBox("Domino/System/AI/NavLinkModifier.lua");
    l0 = self.box_NavLinkModifier_10;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NavLinkModifier_10");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_COMMON_DisableNavlinks|755595940");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_NavLinkModifier_10_Activated,
        -- Deactivated,
        [1] = self.f_box_NavLinkModifier_10_Deactivated,
    });
    self.box_NavLinkModifier_7 = cbox:CreateBox("Domino/System/AI/NavLinkModifier.lua");
    l0 = self.box_NavLinkModifier_7;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NavLinkModifier_7");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_COMMON_DisableNavlinks|760169849");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_NavLinkModifier_7_Activated,
        -- Deactivated,
        [1] = self.f_box_NavLinkModifier_7_Deactivated,
    });
    self.box_NavLinkModifier_9 = cbox:CreateBox("Domino/System/AI/NavLinkModifier.lua");
    l0 = self.box_NavLinkModifier_9;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NavLinkModifier_9");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_COMMON_DisableNavlinks|863395400");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_NavLinkModifier_9_Activated,
        -- Deactivated,
        [1] = self.f_box_NavLinkModifier_9_Deactivated,
    });
    self.box_NavLinkModifier_15 = cbox:CreateBox("Domino/System/AI/NavLinkModifier.lua");
    l0 = self.box_NavLinkModifier_15;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NavLinkModifier_15");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_COMMON_DisableNavlinks|960094743");
    l0:SetConnections({
    });
    self.box_NavLinkModifier_1 = cbox:CreateBox("Domino/System/AI/NavLinkModifier.lua");
    l0 = self.box_NavLinkModifier_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NavLinkModifier_1");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_COMMON_DisableNavlinks|1033485523");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_NavLinkModifier_1_Activated,
        -- Deactivated,
        [1] = self.f_box_NavLinkModifier_1_Deactivated,
    });
    self.box_NavLinkModifier_13 = cbox:CreateBox("Domino/System/AI/NavLinkModifier.lua");
    l0 = self.box_NavLinkModifier_13;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NavLinkModifier_13");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_COMMON_DisableNavlinks|1097663108");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_NavLinkModifier_13_Activated,
        -- Deactivated,
        [1] = self.f_box_NavLinkModifier_13_Deactivated,
    });
    self.box_NavLinkModifier_11 = cbox:CreateBox("Domino/System/AI/NavLinkModifier.lua");
    l0 = self.box_NavLinkModifier_11;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NavLinkModifier_11");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_COMMON_DisableNavlinks|1384444501");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_NavLinkModifier_11_Activated,
        -- Deactivated,
        [1] = self.f_box_NavLinkModifier_11_Deactivated,
    });
    self.box_NavLinkModifier_12 = cbox:CreateBox("Domino/System/AI/NavLinkModifier.lua");
    l0 = self.box_NavLinkModifier_12;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NavLinkModifier_12");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_COMMON_DisableNavlinks|1515877852");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_NavLinkModifier_12_Activated,
        -- Deactivated,
        [1] = self.f_box_NavLinkModifier_12_Deactivated,
    });
    self.box_NavLinkModifier_6 = cbox:CreateBox("Domino/System/AI/NavLinkModifier.lua");
    l0 = self.box_NavLinkModifier_6;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NavLinkModifier_6");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_COMMON_DisableNavlinks|1735738496");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_NavLinkModifier_6_Activated,
        -- Deactivated,
        [1] = self.f_box_NavLinkModifier_6_Deactivated,
    });
end;

function export:Disable()
    local params, l0;
    params = self:OnEnter_box_OutputOrder_v2_3();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_COMMON_DisableNavlinks|1620909245", "1620909245", "MIS_310_COMMON_DisableNavlinks", "Disable", "box_OutputOrder_v2_3.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:Enable()
    local params, l0;
    params = self:OnEnter_box_OutputOrder_v2_2();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_COMMON_DisableNavlinks|1379072510", "1379072510", "MIS_310_COMMON_DisableNavlinks", "Enable", "box_OutputOrder_v2_2.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_NavLinkModifier_14_Activated()
    local params, l0, l1;
    params = self:OnEnter_box_NavLinkModifier_15();
    l0 = self.box_NavLinkModifier_14;
    l1 = self.box_NavLinkModifier_15;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_COMMON_DisableNavlinks|1782257409", "1782257409", "MIS_310_COMMON_DisableNavlinks", "box_NavLinkModifier_14.Activated", "box_NavLinkModifier_15.Activate", l0:GetLuaBox(), l1:GetLuaBox());
    -- Activate
    l1:Exec(0, params);
end;

function export:f_box_NavLinkModifier_14_Deactivated()
    local params, l0, l1;
    params = self:OnEnter_box_NavLinkModifier_15();
    l0 = self.box_NavLinkModifier_14;
    l1 = self.box_NavLinkModifier_15;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_COMMON_DisableNavlinks|1562438486", "1562438486", "MIS_310_COMMON_DisableNavlinks", "box_NavLinkModifier_14.Deactivated", "box_NavLinkModifier_15.Deactivate", l0:GetLuaBox(), l1:GetLuaBox());
    -- Deactivate
    l1:Exec(1, params);
end;

function export:f_box_NavLinkModifier_8_Activated()
    local params, l0, l1;
    params = self:OnEnter_box_NavLinkModifier_9();
    l0 = self.box_NavLinkModifier_8;
    l1 = self.box_NavLinkModifier_9;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_COMMON_DisableNavlinks|1701875587", "1701875587", "MIS_310_COMMON_DisableNavlinks", "box_NavLinkModifier_8.Activated", "box_NavLinkModifier_9.Activate", l0:GetLuaBox(), l1:GetLuaBox());
    -- Activate
    l1:Exec(0, params);
end;

function export:f_box_NavLinkModifier_8_Deactivated()
    local params, l0, l1;
    params = self:OnEnter_box_NavLinkModifier_9();
    l0 = self.box_NavLinkModifier_8;
    l1 = self.box_NavLinkModifier_9;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_COMMON_DisableNavlinks|566130128", "566130128", "MIS_310_COMMON_DisableNavlinks", "box_NavLinkModifier_8.Deactivated", "box_NavLinkModifier_9.Deactivate", l0:GetLuaBox(), l1:GetLuaBox());
    -- Deactivate
    l1:Exec(1, params);
end;

function export:f_box_NavLinkModifier_5_Activated()
    local params, l0, l1;
    params = self:OnEnter_box_NavLinkModifier_6();
    l0 = self.box_NavLinkModifier_5;
    l1 = self.box_NavLinkModifier_6;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_COMMON_DisableNavlinks|859759749", "859759749", "MIS_310_COMMON_DisableNavlinks", "box_NavLinkModifier_5.Activated", "box_NavLinkModifier_6.Activate", l0:GetLuaBox(), l1:GetLuaBox());
    -- Activate
    l1:Exec(0, params);
end;

function export:f_box_NavLinkModifier_5_Deactivated()
    local params, l0, l1;
    params = self:OnEnter_box_NavLinkModifier_6();
    l0 = self.box_NavLinkModifier_5;
    l1 = self.box_NavLinkModifier_6;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_COMMON_DisableNavlinks|1189858841", "1189858841", "MIS_310_COMMON_DisableNavlinks", "box_NavLinkModifier_5.Deactivated", "box_NavLinkModifier_6.Deactivate", l0:GetLuaBox(), l1:GetLuaBox());
    -- Deactivate
    l1:Exec(1, params);
end;

function export:f_box_MultipleOR_4_Out()
    local l0;
    l0 = self.box_MultipleOR_4;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_COMMON_DisableNavlinks|2091708278", "2091708278", "MIS_310_COMMON_DisableNavlinks", "box_MultipleOR_4.Out", "Out", l0:GetLuaBox(), self);
    self:Out();
end;

function export:f_box_NavLinkModifier_10_Activated()
    local params, l0, l1;
    params = self:OnEnter_box_NavLinkModifier_11();
    l0 = self.box_NavLinkModifier_10;
    l1 = self.box_NavLinkModifier_11;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_COMMON_DisableNavlinks|1650872554", "1650872554", "MIS_310_COMMON_DisableNavlinks", "box_NavLinkModifier_10.Activated", "box_NavLinkModifier_11.Activate", l0:GetLuaBox(), l1:GetLuaBox());
    -- Activate
    l1:Exec(0, params);
end;

function export:f_box_NavLinkModifier_10_Deactivated()
    local params, l0, l1;
    params = self:OnEnter_box_NavLinkModifier_11();
    l0 = self.box_NavLinkModifier_10;
    l1 = self.box_NavLinkModifier_11;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_COMMON_DisableNavlinks|1618493498", "1618493498", "MIS_310_COMMON_DisableNavlinks", "box_NavLinkModifier_10.Deactivated", "box_NavLinkModifier_11.Deactivate", l0:GetLuaBox(), l1:GetLuaBox());
    -- Deactivate
    l1:Exec(1, params);
end;

function export:f_box_NavLinkModifier_7_Activated()
    local params, l0, l1;
    params = self:OnEnter_box_NavLinkModifier_8();
    l0 = self.box_NavLinkModifier_7;
    l1 = self.box_NavLinkModifier_8;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_COMMON_DisableNavlinks|1827182607", "1827182607", "MIS_310_COMMON_DisableNavlinks", "box_NavLinkModifier_7.Activated", "box_NavLinkModifier_8.Activate", l0:GetLuaBox(), l1:GetLuaBox());
    -- Activate
    l1:Exec(0, params);
end;

function export:f_box_NavLinkModifier_7_Deactivated()
    local params, l0, l1;
    params = self:OnEnter_box_NavLinkModifier_8();
    l0 = self.box_NavLinkModifier_7;
    l1 = self.box_NavLinkModifier_8;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_COMMON_DisableNavlinks|61501514", "61501514", "MIS_310_COMMON_DisableNavlinks", "box_NavLinkModifier_7.Deactivated", "box_NavLinkModifier_8.Deactivate", l0:GetLuaBox(), l1:GetLuaBox());
    -- Deactivate
    l1:Exec(1, params);
end;

function export:f_box_NavLinkModifier_9_Activated()
    local params, l0, l1;
    params = self:OnEnter_box_NavLinkModifier_10();
    l0 = self.box_NavLinkModifier_9;
    l1 = self.box_NavLinkModifier_10;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_COMMON_DisableNavlinks|983415324", "983415324", "MIS_310_COMMON_DisableNavlinks", "box_NavLinkModifier_9.Activated", "box_NavLinkModifier_10.Activate", l0:GetLuaBox(), l1:GetLuaBox());
    -- Activate
    l1:Exec(0, params);
end;

function export:f_box_NavLinkModifier_9_Deactivated()
    local params, l0, l1;
    params = self:OnEnter_box_NavLinkModifier_10();
    l0 = self.box_NavLinkModifier_9;
    l1 = self.box_NavLinkModifier_10;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_COMMON_DisableNavlinks|587599017", "587599017", "MIS_310_COMMON_DisableNavlinks", "box_NavLinkModifier_9.Deactivated", "box_NavLinkModifier_10.Deactivate", l0:GetLuaBox(), l1:GetLuaBox());
    -- Deactivate
    l1:Exec(1, params);
end;

function export:f_box_NavLinkModifier_1_Activated()
    local params, l0, l1;
    params = self:OnEnter_box_NavLinkModifier_5();
    l0 = self.box_NavLinkModifier_1;
    l1 = self.box_NavLinkModifier_5;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_COMMON_DisableNavlinks|986002064", "986002064", "MIS_310_COMMON_DisableNavlinks", "box_NavLinkModifier_1.Activated", "box_NavLinkModifier_5.Activate", l0:GetLuaBox(), l1:GetLuaBox());
    -- Activate
    l1:Exec(0, params);
end;

function export:f_box_NavLinkModifier_1_Deactivated()
    local params, l0, l1;
    params = self:OnEnter_box_NavLinkModifier_5();
    l0 = self.box_NavLinkModifier_1;
    l1 = self.box_NavLinkModifier_5;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_COMMON_DisableNavlinks|1637210497", "1637210497", "MIS_310_COMMON_DisableNavlinks", "box_NavLinkModifier_1.Deactivated", "box_NavLinkModifier_5.Deactivate", l0:GetLuaBox(), l1:GetLuaBox());
    -- Deactivate
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_2_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_NavLinkModifier_1();
    l0 = self.box_NavLinkModifier_1;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_COMMON_DisableNavlinks|1849990272", "1849990272", "MIS_310_COMMON_DisableNavlinks", "box_OutputOrder_v2_2.Out", "box_NavLinkModifier_1.Activate", clone:GetLuaBox(), l0:GetLuaBox());
    -- Activate
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_2_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_4;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_COMMON_DisableNavlinks|1634522899", "1634522899", "MIS_310_COMMON_DisableNavlinks", "box_OutputOrder_v2_2.Out", "box_MultipleOR_4.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_NavLinkModifier_13_Activated()
    local params, l0, l1;
    params = self:OnEnter_box_NavLinkModifier_14();
    l0 = self.box_NavLinkModifier_13;
    l1 = self.box_NavLinkModifier_14;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_COMMON_DisableNavlinks|845394300", "845394300", "MIS_310_COMMON_DisableNavlinks", "box_NavLinkModifier_13.Activated", "box_NavLinkModifier_14.Activate", l0:GetLuaBox(), l1:GetLuaBox());
    -- Activate
    l1:Exec(0, params);
end;

function export:f_box_NavLinkModifier_13_Deactivated()
    local params, l0, l1;
    params = self:OnEnter_box_NavLinkModifier_14();
    l0 = self.box_NavLinkModifier_13;
    l1 = self.box_NavLinkModifier_14;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_COMMON_DisableNavlinks|925411919", "925411919", "MIS_310_COMMON_DisableNavlinks", "box_NavLinkModifier_13.Deactivated", "box_NavLinkModifier_14.Deactivate", l0:GetLuaBox(), l1:GetLuaBox());
    -- Deactivate
    l1:Exec(1, params);
end;

function export:f_box_NavLinkModifier_11_Activated()
    local params, l0, l1;
    params = self:OnEnter_box_NavLinkModifier_12();
    l0 = self.box_NavLinkModifier_11;
    l1 = self.box_NavLinkModifier_12;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_COMMON_DisableNavlinks|140415474", "140415474", "MIS_310_COMMON_DisableNavlinks", "box_NavLinkModifier_11.Activated", "box_NavLinkModifier_12.Activate", l0:GetLuaBox(), l1:GetLuaBox());
    -- Activate
    l1:Exec(0, params);
end;

function export:f_box_NavLinkModifier_11_Deactivated()
    local params, l0, l1;
    params = self:OnEnter_box_NavLinkModifier_12();
    l0 = self.box_NavLinkModifier_11;
    l1 = self.box_NavLinkModifier_12;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_COMMON_DisableNavlinks|1484992137", "1484992137", "MIS_310_COMMON_DisableNavlinks", "box_NavLinkModifier_11.Deactivated", "box_NavLinkModifier_12.Deactivate", l0:GetLuaBox(), l1:GetLuaBox());
    -- Deactivate
    l1:Exec(1, params);
end;

function export:f_box_NavLinkModifier_12_Activated()
    local params, l0, l1;
    params = self:OnEnter_box_NavLinkModifier_13();
    l0 = self.box_NavLinkModifier_12;
    l1 = self.box_NavLinkModifier_13;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_COMMON_DisableNavlinks|1203689011", "1203689011", "MIS_310_COMMON_DisableNavlinks", "box_NavLinkModifier_12.Activated", "box_NavLinkModifier_13.Activate", l0:GetLuaBox(), l1:GetLuaBox());
    -- Activate
    l1:Exec(0, params);
end;

function export:f_box_NavLinkModifier_12_Deactivated()
    local params, l0, l1;
    params = self:OnEnter_box_NavLinkModifier_13();
    l0 = self.box_NavLinkModifier_12;
    l1 = self.box_NavLinkModifier_13;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_COMMON_DisableNavlinks|1897225354", "1897225354", "MIS_310_COMMON_DisableNavlinks", "box_NavLinkModifier_12.Deactivated", "box_NavLinkModifier_13.Deactivate", l0:GetLuaBox(), l1:GetLuaBox());
    -- Deactivate
    l1:Exec(1, params);
end;

function export:f_box_NavLinkModifier_6_Activated()
    local params, l0, l1;
    params = self:OnEnter_box_NavLinkModifier_7();
    l0 = self.box_NavLinkModifier_6;
    l1 = self.box_NavLinkModifier_7;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_COMMON_DisableNavlinks|769663939", "769663939", "MIS_310_COMMON_DisableNavlinks", "box_NavLinkModifier_6.Activated", "box_NavLinkModifier_7.Activate", l0:GetLuaBox(), l1:GetLuaBox());
    -- Activate
    l1:Exec(0, params);
end;

function export:f_box_NavLinkModifier_6_Deactivated()
    local params, l0, l1;
    params = self:OnEnter_box_NavLinkModifier_7();
    l0 = self.box_NavLinkModifier_6;
    l1 = self.box_NavLinkModifier_7;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_COMMON_DisableNavlinks|837616198", "837616198", "MIS_310_COMMON_DisableNavlinks", "box_NavLinkModifier_6.Deactivated", "box_NavLinkModifier_7.Deactivate", l0:GetLuaBox(), l1:GetLuaBox());
    -- Deactivate
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_3_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_NavLinkModifier_1();
    l0 = self.box_NavLinkModifier_1;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_COMMON_DisableNavlinks|240855048", "240855048", "MIS_310_COMMON_DisableNavlinks", "box_OutputOrder_v2_3.Out", "box_NavLinkModifier_1.Deactivate", clone:GetLuaBox(), l0:GetLuaBox());
    -- Deactivate
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_3_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_4;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_COMMON_DisableNavlinks|1281997763", "1281997763", "MIS_310_COMMON_DisableNavlinks", "box_OutputOrder_v2_3.Out", "box_MultipleOR_4.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:OnEnter_box_NavLinkModifier_14()
    local params;
    params = {
        -- Entity,
        [0] = "2108503777030967174",
    };
    return params;
end;

function export:OnEnter_box_NavLinkModifier_8()
    local params;
    params = {
        -- Entity,
        [0] = "2109401854174574524",
    };
    return params;
end;

function export:OnEnter_box_NavLinkModifier_5()
    local params;
    params = {
        -- Entity,
        [0] = "2109970283415738546",
    };
    return params;
end;

function export:OnEnter_box_NavLinkModifier_10()
    local params;
    params = {
        -- Entity,
        [0] = "2108420817317565248",
    };
    return params;
end;

function export:OnEnter_box_NavLinkModifier_7()
    local params;
    params = {
        -- Entity,
        [0] = "2109970290776742068",
    };
    return params;
end;

function export:OnEnter_box_NavLinkModifier_9()
    local params;
    params = {
        -- Entity,
        [0] = "2109970489991502018",
    };
    return params;
end;

function export:OnEnter_box_NavLinkModifier_15()
    local params;
    params = {
        -- Entity,
        [0] = "2108407315548874196",
    };
    return params;
end;

function export:OnEnter_box_NavLinkModifier_1()
    local params;
    params = {
        -- Entity,
        [0] = "2109970225089747104",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_2");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_COMMON_DisableNavlinks|1079462344");
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
                [0] = self.f_box_OutputOrder_v2_2_Out_0,
                [1] = self.f_box_OutputOrder_v2_2_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_NavLinkModifier_13()
    local params;
    params = {
        -- Entity,
        [0] = "2108420904462619501",
    };
    return params;
end;

function export:OnEnter_box_NavLinkModifier_11()
    local params;
    params = {
        -- Entity,
        [0] = "2108420864337810269",
    };
    return params;
end;

function export:OnEnter_box_NavLinkModifier_12()
    local params;
    params = {
        -- Entity,
        [0] = "2108420883577082727",
    };
    return params;
end;

function export:OnEnter_box_NavLinkModifier_6()
    local params;
    params = {
        -- Entity,
        [0] = "2109970280332925102",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_3");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_COMMON_DisableNavlinks|1985894790");
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

-- Empty out anchor definitions
function export:Out()
    
end;
_compilerVersion = 60;
<DominoMetadata IsStateless="0" IsSystem="0">
	<ControlsIn>
		<ControlIn Name="Disable" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
		<ControlIn Name="Enable" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
	</ControlsIn>
	<ControlsOut>
		<ControlOut Name="Out" AnchorDynType="0" IsDelayed="0" />
	</ControlsOut>
	<DatasIn />
	<DatasOut />
</DominoMetadata>
