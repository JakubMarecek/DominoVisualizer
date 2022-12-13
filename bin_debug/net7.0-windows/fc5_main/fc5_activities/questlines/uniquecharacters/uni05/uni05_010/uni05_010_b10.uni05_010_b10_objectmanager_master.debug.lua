LUACi>  -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc5_main/fc5_activities/questlines/uniquecharacters/uni05/uni05_010/uni05_010_b10.domino
-- User graph: UNI05_010_B10_ObjectManager_Master
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
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/user/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI05/UNI05_010/UNI05_010_B10.UNI05_010_B10_ObjectManager_Single.debug.lua");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI05/UNI05_010/UNI05_010_B10.UNI05_010_B10_ObjectManager_Master.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/user/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI05/UNI05_010/UNI05_010_B10.UNI05_010_B10_ObjectManager_Single.debug.lua")] = {
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
                name = "Fact",
                type = "string",
            },
            [1] = {
                name = "Mission_Object",
                type = "bool",
            },
            [2] = {
                name = "Object_Intact",
                type = "entity",
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
    self._name = "UNI05_010_B10_ObjectManager_Master";
    self._elementPathId = "DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_010\\UNI05_010_B10.domino|@UNI05_010_B10_ObjectManager_Master";
    self.Out = DummyFunction;
    self.box_UNI05_010_B10_ObjectManager_Single_2 = cbox:CreateBox("Domino/user/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI05/UNI05_010/UNI05_010_B10.UNI05_010_B10_ObjectManager_Single.debug.lua");
    l0 = self.box_UNI05_010_B10_ObjectManager_Single_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UNI05_010_B10_ObjectManager_Single_2");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_010\\UNI05_010_B10.domino|@UNI05_010_B10_ObjectManager_Master|34200507");
    l0:SetConnections({
    });
    self.box_UNI05_010_B10_ObjectManager_Single_3 = cbox:CreateBox("Domino/user/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI05/UNI05_010/UNI05_010_B10.UNI05_010_B10_ObjectManager_Single.debug.lua");
    l0 = self.box_UNI05_010_B10_ObjectManager_Single_3;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UNI05_010_B10_ObjectManager_Single_3");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_010\\UNI05_010_B10.domino|@UNI05_010_B10_ObjectManager_Master|982400796");
    l0:SetConnections({
    });
    self.box_UNI05_010_B10_ObjectManager_Single_5 = cbox:CreateBox("Domino/user/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI05/UNI05_010/UNI05_010_B10.UNI05_010_B10_ObjectManager_Single.debug.lua");
    l0 = self.box_UNI05_010_B10_ObjectManager_Single_5;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UNI05_010_B10_ObjectManager_Single_5");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_010\\UNI05_010_B10.domino|@UNI05_010_B10_ObjectManager_Master|1315236519");
    l0:SetConnections({
    });
    self.box_UNI05_010_B10_ObjectManager_Single_1 = cbox:CreateBox("Domino/user/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI05/UNI05_010/UNI05_010_B10.UNI05_010_B10_ObjectManager_Single.debug.lua");
    l0 = self.box_UNI05_010_B10_ObjectManager_Single_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UNI05_010_B10_ObjectManager_Single_1");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_010\\UNI05_010_B10.domino|@UNI05_010_B10_ObjectManager_Master|1605697509");
    l0:SetConnections({
    });
    self.box_UNI05_010_B10_ObjectManager_Single_6 = cbox:CreateBox("Domino/user/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI05/UNI05_010/UNI05_010_B10.UNI05_010_B10_ObjectManager_Single.debug.lua");
    l0 = self.box_UNI05_010_B10_ObjectManager_Single_6;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UNI05_010_B10_ObjectManager_Single_6");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_010\\UNI05_010_B10.domino|@UNI05_010_B10_ObjectManager_Master|1672966092");
    l0:SetConnections({
    });
    self.box_UNI05_010_B10_ObjectManager_Single_7 = cbox:CreateBox("Domino/user/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI05/UNI05_010/UNI05_010_B10.UNI05_010_B10_ObjectManager_Single.debug.lua");
    l0 = self.box_UNI05_010_B10_ObjectManager_Single_7;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UNI05_010_B10_ObjectManager_Single_7");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_010\\UNI05_010_B10.domino|@UNI05_010_B10_ObjectManager_Master|1849229421");
    l0:SetConnections({
    });
    self.box_UNI05_010_B10_ObjectManager_Single_8 = cbox:CreateBox("Domino/user/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI05/UNI05_010/UNI05_010_B10.UNI05_010_B10_ObjectManager_Single.debug.lua");
    l0 = self.box_UNI05_010_B10_ObjectManager_Single_8;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UNI05_010_B10_ObjectManager_Single_8");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_010\\UNI05_010_B10.domino|@UNI05_010_B10_ObjectManager_Master|1858995982");
    l0:SetConnections({
    });
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_OutputOrder_v2_4();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_010\\UNI05_010_B10.domino|@UNI05_010_B10_ObjectManager_Master|951654039", "951654039", "UNI05_010_B10_ObjectManager_Master", "In", "box_OutputOrder_v2_4.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_4_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UNI05_010_B10_ObjectManager_Single_5();
    l0 = self.box_UNI05_010_B10_ObjectManager_Single_5;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_010\\UNI05_010_B10.domino|@UNI05_010_B10_ObjectManager_Master|1705761561", "1705761561", "UNI05_010_B10_ObjectManager_Master", "box_OutputOrder_v2_4.Out", "box_UNI05_010_B10_ObjectManager_Single_5.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_4_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UNI05_010_B10_ObjectManager_Single_3();
    l0 = self.box_UNI05_010_B10_ObjectManager_Single_3;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_010\\UNI05_010_B10.domino|@UNI05_010_B10_ObjectManager_Master|831994822", "831994822", "UNI05_010_B10_ObjectManager_Master", "box_OutputOrder_v2_4.Out", "box_UNI05_010_B10_ObjectManager_Single_3.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_4_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UNI05_010_B10_ObjectManager_Single_2();
    l0 = self.box_UNI05_010_B10_ObjectManager_Single_2;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_010\\UNI05_010_B10.domino|@UNI05_010_B10_ObjectManager_Master|1913247861", "1913247861", "UNI05_010_B10_ObjectManager_Master", "box_OutputOrder_v2_4.Out", "box_UNI05_010_B10_ObjectManager_Single_2.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_4_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UNI05_010_B10_ObjectManager_Single_7();
    l0 = self.box_UNI05_010_B10_ObjectManager_Single_7;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_010\\UNI05_010_B10.domino|@UNI05_010_B10_ObjectManager_Master|1528488236", "1528488236", "UNI05_010_B10_ObjectManager_Master", "box_OutputOrder_v2_4.Out", "box_UNI05_010_B10_ObjectManager_Single_7.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_4_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UNI05_010_B10_ObjectManager_Single_1();
    l0 = self.box_UNI05_010_B10_ObjectManager_Single_1;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_010\\UNI05_010_B10.domino|@UNI05_010_B10_ObjectManager_Master|1087001147", "1087001147", "UNI05_010_B10_ObjectManager_Master", "box_OutputOrder_v2_4.Out", "box_UNI05_010_B10_ObjectManager_Single_1.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_4_Out_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UNI05_010_B10_ObjectManager_Single_6();
    l0 = self.box_UNI05_010_B10_ObjectManager_Single_6;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_010\\UNI05_010_B10.domino|@UNI05_010_B10_ObjectManager_Master|805480333", "805480333", "UNI05_010_B10_ObjectManager_Master", "box_OutputOrder_v2_4.Out", "box_UNI05_010_B10_ObjectManager_Single_6.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_4_Out_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UNI05_010_B10_ObjectManager_Single_8();
    l0 = self.box_UNI05_010_B10_ObjectManager_Single_8;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_010\\UNI05_010_B10.domino|@UNI05_010_B10_ObjectManager_Master|1286338261", "1286338261", "UNI05_010_B10_ObjectManager_Master", "box_OutputOrder_v2_4.Out", "box_UNI05_010_B10_ObjectManager_Single_8.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:OnEnter_box_UNI05_010_B10_ObjectManager_Single_2()
    local params;
    params = {
        -- Fact,
        [0] = "Guitar_Broken",
        -- Mission_Object,
        [1] = true,
        -- Object_Intact,
        [2] = "2096698702086279919",
    };
    return params;
end;

function export:OnEnter_box_UNI05_010_B10_ObjectManager_Single_3()
    local params;
    params = {
        -- Fact,
        [0] = "SepticTank_Broken",
        -- Mission_Object,
        [1] = true,
        -- Object_Intact,
        [2] = "2096420472234186079",
    };
    return params;
end;

function export:OnEnter_box_UNI05_010_B10_ObjectManager_Single_5()
    local params;
    params = {
        -- Fact,
        [0] = "Satelite_Broken",
        -- Mission_Object,
        [1] = true,
        -- Object_Intact,
        [2] = "2096420509227947363",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_4");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_010\\UNI05_010_B10.domino|@UNI05_010_B10_ObjectManager_Master|1602832135");
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
                [0] = self.f_box_OutputOrder_v2_4_Out_0,
                [1] = self.f_box_OutputOrder_v2_4_Out_1,
                [2] = self.f_box_OutputOrder_v2_4_Out_2,
                [3] = self.f_box_OutputOrder_v2_4_Out_3,
                [4] = self.f_box_OutputOrder_v2_4_Out_4,
                [5] = self.f_box_OutputOrder_v2_4_Out_5,
                [6] = self.f_box_OutputOrder_v2_4_Out_6,
            },
            count = 7,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_UNI05_010_B10_ObjectManager_Single_1()
    local params;
    params = {
        -- Fact,
        [0] = "Canoe_Broken",
        -- Mission_Object,
        [1] = false,
        -- Object_Intact,
        [2] = "2096420593059501415",
    };
    return params;
end;

function export:OnEnter_box_UNI05_010_B10_ObjectManager_Single_6()
    local params;
    params = {
        -- Fact,
        [0] = "Left_Chair_Broken",
        -- Mission_Object,
        [1] = false,
        -- Object_Intact,
        [2] = "2098519235895503817",
    };
    return params;
end;

function export:OnEnter_box_UNI05_010_B10_ObjectManager_Single_7()
    local params;
    params = {
        -- Fact,
        [0] = "Beer_Broken",
        -- Mission_Object,
        [1] = true,
        -- Object_Intact,
        [2] = "2096420492645766497",
    };
    return params;
end;

function export:OnEnter_box_UNI05_010_B10_ObjectManager_Single_8()
    local params;
    params = {
        -- Fact,
        [0] = "Right_Chair_Broken",
        -- Mission_Object,
        [1] = false,
        -- Object_Intact,
        [2] = "2098519233905306567",
    };
    return params;
end;

-- Empty out anchor definitions
function export:Out()
    
end;
_compilerVersion = 60;
<DominoMetadata IsStateless="0" IsSystem="0">
	<ControlsIn>
		<ControlIn Name="In" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
	</ControlsIn>
	<ControlsOut>
		<ControlOut Name="Out" AnchorDynType="0" IsDelayed="0" />
	</ControlsOut>
	<DatasIn />
	<DatasOut />
</DominoMetadata>
