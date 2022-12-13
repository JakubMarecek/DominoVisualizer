LUAC2*  -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc5_main/fc5_activities/questlines/uniquecharacters/uni25/uni25_020_b10.domino
-- User graph: UNI25_020_B10_Chalet_Heli
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
        cboxRes:RegisterBox("Domino/System/Print_v2.lua");
        cboxRes:RegisterBox("Domino/System/ProximityRadiusListener_v3.lua");
        cboxRes:RegisterBox("Domino/System/RemoveEntity_v2.lua");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI25/UNI25_020_B10.UNI25_020_B10_Chalet_Heli.debug.lua")] = {
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
    self._name = "UNI25_020_B10_Chalet_Heli";
    self._elementPathId = "DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI25\\UNI25_020_B10.domino|@UNI25_020_B10_Chalet_Heli";
    self.Out = DummyFunction;
    self.box_RemoveEntity_v2_3 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_3;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_3");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI25\\UNI25_020_B10.domino|@UNI25_020_B10_Chalet_Heli|252380227");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RemoveEntity_v2_3_Out,
    });
    self.box_ProximityRadiusListener_v3_1 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_1");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI25\\UNI25_020_B10.domino|@UNI25_020_B10_Chalet_Heli|1136563969");
    l0:SetConnections({
        -- Enabled,
        [3] = self.f_box_ProximityRadiusListener_v3_1_Enabled,
        -- SomeoneNear,
        [5] = self.f_box_ProximityRadiusListener_v3_1_SomeoneNear,
    });
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_ProximityRadiusListener_v3_1();
    l0 = self.box_ProximityRadiusListener_v3_1;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI25\\UNI25_020_B10.domino|@UNI25_020_B10_Chalet_Heli|1739612185", "1739612185", "UNI25_020_B10_Chalet_Heli", "In", "box_ProximityRadiusListener_v3_1.Enable", self, l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_RemoveEntity_v2_3_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Print_v2_2();
    l0 = self.box_RemoveEntity_v2_3;
    l1 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI25\\UNI25_020_B10.domino|@UNI25_020_B10_Chalet_Heli|184575965", "184575965", "UNI25_020_B10_Chalet_Heli", "box_RemoveEntity_v2_3.Out", "box_Print_v2_2.ToScreen", l0:GetLuaBox(), l1:GetLuaBox());
    -- ToScreen
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ProximityRadiusListener_v3_1_Enabled()
    local l0;
    l0 = self.box_ProximityRadiusListener_v3_1;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI25\\UNI25_020_B10.domino|@UNI25_020_B10_Chalet_Heli|1397420967", "1397420967", "UNI25_020_B10_Chalet_Heli", "box_ProximityRadiusListener_v3_1.Enabled", "Out", l0:GetLuaBox(), self);
    self:Out();
end;

function export:f_box_ProximityRadiusListener_v3_1_SomeoneNear()
    local params, l0, l1;
    params = self:OnEnter_box_RemoveEntity_v2_3();
    l0 = self.box_ProximityRadiusListener_v3_1;
    l1 = self.box_RemoveEntity_v2_3;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI25\\UNI25_020_B10.domino|@UNI25_020_B10_Chalet_Heli|628535295", "628535295", "UNI25_020_B10_Chalet_Heli", "box_ProximityRadiusListener_v3_1.SomeoneNear", "box_RemoveEntity_v2_3.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:OnEnter_box_RemoveEntity_v2_3()
    local params;
    params = {
        -- Group,
        [0] = "#120B7ABD",
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_1()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- Entities,
        [1] = "#120B7ABD",
        -- id2,
        [3] = "2098671114916989774",
        -- nearZone,
        [4] = 10,
        -- use2d,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_Print_v2_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_2");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI25\\UNI25_020_B10.domino|@UNI25_020_B10_Chalet_Heli|1230406605");
    l0:SetConnections({
    });
    params = {
        -- color,
        [1] = "red",
        -- duration,
        [3] = 5,
        -- path,
        [7] = "C:\\Print.log",
        -- str,
        [8] = "Heli removed!!",
        -- useTimeTag,
        [9] = true,
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
