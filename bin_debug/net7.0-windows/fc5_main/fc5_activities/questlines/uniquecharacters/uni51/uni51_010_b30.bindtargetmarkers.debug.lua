LUAC�!  -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc5_main/fc5_activities/questlines/uniquecharacters/uni51/uni51_010_b30.domino
-- User graph: BindTargetMarkers
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
        cboxRes:RegisterBox("Domino/user/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI51/UNI51_010_B30.Bind.debug.lua");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI51/UNI51_010_B30.BindTargetMarkers.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/user/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI51/UNI51_010_B30.Bind.debug.lua")] = {
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
                name = "Entity",
                type = "entity",
            },
            [1] = {
                name = "Marker",
                type = "entity",
            },
        },
        dataInCount = 2,
        dataOut = {
        },
        dataOutCount = 0,
    };
end;

function export:Init(cbox)
    local l0;
    self._name = "BindTargetMarkers";
    self._elementPathId = "DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B30.domino|@BindTargetMarkers";
    self.Out = DummyFunction;
    self.box_Bind_5 = cbox:CreateBox("Domino/user/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI51/UNI51_010_B30.Bind.debug.lua");
    l0 = self.box_Bind_5;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Bind_5");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B30.domino|@BindTargetMarkers|1113552165");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Bind_5_Out,
    });
    self.box_Bind_4 = cbox:CreateBox("Domino/user/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI51/UNI51_010_B30.Bind.debug.lua");
    l0 = self.box_Bind_4;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Bind_4");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B30.domino|@BindTargetMarkers|1265964154");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Bind_4_Out,
    });
    self.box_Bind_2 = cbox:CreateBox("Domino/user/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI51/UNI51_010_B30.Bind.debug.lua");
    l0 = self.box_Bind_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Bind_2");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B30.domino|@BindTargetMarkers|1555379145");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Bind_2_Out,
    });
    self.box_Bind_3 = cbox:CreateBox("Domino/user/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI51/UNI51_010_B30.Bind.debug.lua");
    l0 = self.box_Bind_3;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Bind_3");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B30.domino|@BindTargetMarkers|1749148982");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Bind_3_Out,
    });
    self.box_Bind_1 = cbox:CreateBox("Domino/user/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI51/UNI51_010_B30.Bind.debug.lua");
    l0 = self.box_Bind_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Bind_1");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B30.domino|@BindTargetMarkers|1792587253");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Bind_1_Out,
    });
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_Bind_5();
    l0 = self.box_Bind_5;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B30.domino|@BindTargetMarkers|1981878914", "1981878914", "BindTargetMarkers", "In", "box_Bind_5.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_Bind_5_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Bind_4();
    l0 = self.box_Bind_5;
    l1 = self.box_Bind_4;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B30.domino|@BindTargetMarkers|1389296763", "1389296763", "BindTargetMarkers", "box_Bind_5.Out", "box_Bind_4.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_Bind_4_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Bind_2();
    l0 = self.box_Bind_4;
    l1 = self.box_Bind_2;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B30.domino|@BindTargetMarkers|2016829240", "2016829240", "BindTargetMarkers", "box_Bind_4.Out", "box_Bind_2.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_Bind_2_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Bind_1();
    l0 = self.box_Bind_2;
    l1 = self.box_Bind_1;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B30.domino|@BindTargetMarkers|1611686956", "1611686956", "BindTargetMarkers", "box_Bind_2.Out", "box_Bind_1.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_Bind_3_Out()
    local l0;
    l0 = self.box_Bind_3;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B30.domino|@BindTargetMarkers|276604383", "276604383", "BindTargetMarkers", "box_Bind_3.Out", "Out", l0:GetLuaBox(), self);
    self:Out();
end;

function export:f_box_Bind_1_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Bind_3();
    l0 = self.box_Bind_1;
    l1 = self.box_Bind_3;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B30.domino|@BindTargetMarkers|1243898155", "1243898155", "BindTargetMarkers", "box_Bind_1.Out", "box_Bind_3.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:OnEnter_box_Bind_5()
    local params;
    params = {
        -- Entity,
        [0] = "2103371259814350768",
        -- Marker,
        [1] = "2100003540247253029",
    };
    return params;
end;

function export:OnEnter_box_Bind_4()
    local params;
    params = {
        -- Entity,
        [0] = "2103371230846390140",
        -- Marker,
        [1] = "2100003540251447339",
    };
    return params;
end;

function export:OnEnter_box_Bind_2()
    local params;
    params = {
        -- Entity,
        [0] = "2103371236837953416",
        -- Marker,
        [1] = "2100606489468094720",
    };
    return params;
end;

function export:OnEnter_box_Bind_3()
    local params;
    params = {
        -- Entity,
        [0] = "2103371251597709216",
        -- Marker,
        [1] = "2100606491936442630",
    };
    return params;
end;

function export:OnEnter_box_Bind_1()
    local params;
    params = {
        -- Entity,
        [0] = "2103371242733047698",
        -- Marker,
        [1] = "2100606494555785484",
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
