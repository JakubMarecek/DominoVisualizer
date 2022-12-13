LUAC!&  -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc5_main/fc5_activities/questlines/lieutenants/lt02/lt02_040/lt02_040_b50.domino
-- User graph: LT02_040_B50_AddNonNilToList
-- 
-- 
-- DO NOT EDIT MANUALLY THIS FILE OR YOUR CHANGES WILL BE LOST!
-- Please modify the original Domino script instead. You have been warned.

-- *** SCRIPT INPUT REFLECTION ***
--[[
<InputReflection>
    <DataIn Name="eObject" Type="Nomad|entity{}" />
    <DataIn Name="eList" Type="Core|list" />
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
        cboxRes:RegisterBox("Domino/System/IsValueNil_v3.lua");
        cboxRes:RegisterBox("Domino/System/ListWriter_v2.lua");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT02/LT02_040/LT02_040_B50.LT02_040_B50_AddNonNilToList.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Add",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "Added",
                delayed = false,
            },
            [1] = {
                name = "NilValue",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "eList",
                type = "list",
            },
            [1] = {
                name = "eObject",
                type = "entity",
            },
        },
        dataInCount = 2,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/IsValueNil_v3.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "Animation",
            },
            [1] = {
                name = "Archetype",
            },
            [2] = {
                name = "Boolean",
            },
            [3] = {
                name = "Database",
            },
            [4] = {
                name = "Entity",
            },
            [5] = {
                name = "Float",
            },
            [6] = {
                name = "GenericDb",
            },
            [7] = {
                name = "Group",
            },
            [8] = {
                name = "Integer",
            },
            [9] = {
                name = "MissionBlock",
            },
            [10] = {
                name = "MissionBlockLayer",
            },
            [11] = {
                name = "Oasis",
            },
            [12] = {
                name = "Script",
            },
            [13] = {
                name = "Sound",
            },
            [14] = {
                name = "String",
            },
        },
        controlInCount = 15,
        controlOut = {
            [0] = {
                name = "No",
                delayed = false,
            },
            [1] = {
                name = "Yes",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "anim",
                type = "animation",
            },
            [1] = {
                name = "archetypeId",
                type = "archetype",
            },
            [2] = {
                name = "bool",
                type = "bool",
            },
            [3] = {
                name = "databaseId",
                type = "database",
            },
            [4] = {
                name = "ent",
                type = "entity",
            },
            [5] = {
                name = "float",
                type = "float",
            },
            [6] = {
                name = "genericDbId",
                type = "genericdb",
            },
            [7] = {
                name = "group",
                type = "group",
            },
            [8] = {
                name = "int",
                type = "int",
            },
            [9] = {
                name = "missionBlockId",
                type = "missionblock",
            },
            [10] = {
                name = "missionBlockLayerId",
                type = "missionblocklayer",
            },
            [11] = {
                name = "oasis",
                type = "oasis",
            },
            [12] = {
                name = "script",
                type = "boxclass",
            },
            [13] = {
                name = "sound",
                type = "Sound",
            },
            [14] = {
                name = "str",
                type = "string",
            },
        },
        dataInCount = 15,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/ListWriter_v2.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "Add",
            },
            [1] = {
                name = "Remove",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "Added",
                delayed = false,
            },
            [1] = {
                name = "Removed",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "Data",
                type = "entity",
            },
            [1] = {
                name = "Index",
                type = "int",
            },
            [2] = {
                name = "Input",
                type = "list",
            },
        },
        dataInCount = 3,
        dataOut = {
        },
        dataOutCount = 0,
    };
end;

function export:Init(cbox)
    self._name = "LT02_040_B50_AddNonNilToList";
    self._elementPathId = "DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50_AddNonNilToList";
    self.NilValue = DummyFunction;
    self.Added = DummyFunction;
end;

function export:Add()
    local params, l0;
    params = self:OnEnter_box_IsValueNil_v3_1();
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50_AddNonNilToList|420148558", "420148558", "LT02_040_B50_AddNonNilToList", "Add", "box_IsValueNil_v3_1.Entity", self, l0:GetLuaBox());
    -- Entity
    l0:Exec(4, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_IsValueNil_v3_1_No()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ListWriter_v2_2();
    l0 = Boxes[GetPathID("Domino/System/ListWriter_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50_AddNonNilToList|1488752136", "1488752136", "LT02_040_B50_AddNonNilToList", "box_IsValueNil_v3_1.No", "box_ListWriter_v2_2.Add", clone:GetLuaBox(), l0:GetLuaBox());
    -- Add
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_IsValueNil_v3_1_Yes()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    local clone = l0;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50_AddNonNilToList|1184109280", "1184109280", "LT02_040_B50_AddNonNilToList", "box_IsValueNil_v3_1.Yes", "NilValue", clone:GetLuaBox(), self);
    self:NilValue();
end;

function export:f_box_ListWriter_v2_2_Added()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/ListWriter_v2.lua")];
    local clone = l0;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50_AddNonNilToList|1284964322", "1284964322", "LT02_040_B50_AddNonNilToList", "box_ListWriter_v2_2.Added", "Added", clone:GetLuaBox(), self);
    self:Added();
end;

function export:OnEnter_box_IsValueNil_v3_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsValueNil_v3_1");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50_AddNonNilToList|481900024");
    l0:SetConnections({
        -- No,
        [0] = self.f_box_IsValueNil_v3_1_No,
        -- Yes,
        [1] = self.f_box_IsValueNil_v3_1_Yes,
    });
    params = {
        -- ent,
        [4] = self.eObject,
    };
    return params;
end;

function export:OnEnter_box_ListWriter_v2_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ListWriter_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ListWriter_v2_2");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50_AddNonNilToList|2000090302");
    l0:SetConnections({
        -- Added,
        [0] = self.f_box_ListWriter_v2_2_Added,
    });
    params = {
        -- Data,
        [0] = self.eObject,
        -- Input,
        [2] = self.eList,
    };
    return params;
end;

-- Empty out anchor definitions
function export:NilValue()
    
end;
function export:Added()
    
end;
_compilerVersion = 60;
<DominoMetadata IsStateless="0" IsSystem="0">
	<ControlsIn>
		<ControlIn Name="Add" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
	</ControlsIn>
	<ControlsOut>
		<ControlOut Name="Added" AnchorDynType="0" IsDelayed="0" />
		<ControlOut Name="NilValue" AnchorDynType="0" IsDelayed="0" />
	</ControlsOut>
	<DatasIn>
		<DataIn Name="eList" AnchorDynType="0" DataTypeID="list" />
		<DataIn Name="eObject" AnchorDynType="0" DataTypeID="entity" />
	</DatasIn>
	<DatasOut />
</DominoMetadata>
