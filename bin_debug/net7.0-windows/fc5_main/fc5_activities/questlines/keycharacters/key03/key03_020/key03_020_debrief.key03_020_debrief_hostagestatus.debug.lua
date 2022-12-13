LUACc%  -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc5_main/fc5_activities/questlines/keycharacters/key03/key03_020/key03_020_debrief.domino
-- User graph: KEY03_020_DEBRIEF_HostageStatus
-- 
-- 
-- DO NOT EDIT MANUALLY THIS FILE OR YOUR CHANGES WILL BE LOST!
-- Please modify the original Domino script instead. You have been warned.

-- *** SCRIPT INPUT REFLECTION ***
--[[
<InputReflection>
    <DataIn Name="HostageEntity" Type="Nomad|entity{}" />
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
        cboxRes:RegisterBox("Domino/System/IsEntityLoaded_v3.lua");
        cboxRes:RegisterBox("Domino/System/IsPawnAlive_v2.lua");
        cboxRes:RegisterBox("Domino/System/SimpleNode.lua");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/FC5_main/FC5_Activities/QuestLines/KeyCharacters/KEY03/KEY03_020/KEY03_020_DEBRIEF.KEY03_020_DEBRIEF_HostageStatus.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "In",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "Alive_Loaded",
                delayed = false,
            },
            [1] = {
                name = "Dead_Loaded",
                delayed = false,
            },
            [2] = {
                name = "Not_Loaded",
                delayed = false,
            },
        },
        controlOutCount = 3,
        dataIn = {
            [0] = {
                name = "HostageEntity",
                type = "entity",
            },
        },
        dataInCount = 1,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/IsEntityLoaded_v3.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "In",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "False",
                delayed = false,
            },
            [1] = {
                name = "True",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "entityId",
                type = "entity",
            },
        },
        dataInCount = 1,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/IsPawnAlive_v2.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "In",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "False",
                delayed = false,
            },
            [1] = {
                name = "True",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "Pawn",
                type = "entity",
            },
        },
        dataInCount = 1,
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
    self._name = "KEY03_020_DEBRIEF_HostageStatus";
    self._elementPathId = "DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_DEBRIEF.domino|@KEY03_020_DEBRIEF_HostageStatus";
    self.Not_Loaded = DummyFunction;
    self.Dead_Loaded = DummyFunction;
    self.Alive_Loaded = DummyFunction;
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_IsEntityLoaded_v3_3();
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_DEBRIEF.domino|@KEY03_020_DEBRIEF_HostageStatus|713186516", "713186516", "KEY03_020_DEBRIEF_HostageStatus", "In", "box_IsEntityLoaded_v3_3.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_1_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_DEBRIEF.domino|@KEY03_020_DEBRIEF_HostageStatus|1649118499", "1649118499", "KEY03_020_DEBRIEF_HostageStatus", "box_Simple_Node_1.Out", "Not_Loaded", clone:GetLuaBox(), self);
    self:Not_Loaded();
end;

function export:f_box_IsEntityLoaded_v3_3_False()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_1();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_DEBRIEF.domino|@KEY03_020_DEBRIEF_HostageStatus|1829282565", "1829282565", "KEY03_020_DEBRIEF_HostageStatus", "box_IsEntityLoaded_v3_3.False", "box_Simple_Node_1.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_IsEntityLoaded_v3_3_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsPawnAlive_v2_2();
    l0 = Boxes[GetPathID("Domino/System/IsPawnAlive_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_DEBRIEF.domino|@KEY03_020_DEBRIEF_HostageStatus|599504116", "599504116", "KEY03_020_DEBRIEF_HostageStatus", "box_IsEntityLoaded_v3_3.True", "box_IsPawnAlive_v2_2.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_IsPawnAlive_v2_2_False()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IsPawnAlive_v2.lua")];
    local clone = l0;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_DEBRIEF.domino|@KEY03_020_DEBRIEF_HostageStatus|7474864", "7474864", "KEY03_020_DEBRIEF_HostageStatus", "box_IsPawnAlive_v2_2.False", "Dead_Loaded", clone:GetLuaBox(), self);
    self:Dead_Loaded();
end;

function export:f_box_IsPawnAlive_v2_2_True()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IsPawnAlive_v2.lua")];
    local clone = l0;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_DEBRIEF.domino|@KEY03_020_DEBRIEF_HostageStatus|263806705", "263806705", "KEY03_020_DEBRIEF_HostageStatus", "box_IsPawnAlive_v2_2.True", "Alive_Loaded", clone:GetLuaBox(), self);
    self:Alive_Loaded();
end;

function export:OnEnter_box_Simple_Node_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_1");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_DEBRIEF.domino|@KEY03_020_DEBRIEF_HostageStatus|496023782");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_1_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_IsEntityLoaded_v3_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsEntityLoaded_v3_3");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_DEBRIEF.domino|@KEY03_020_DEBRIEF_HostageStatus|1946778811");
    l0:SetConnections({
        -- False,
        [0] = self.f_box_IsEntityLoaded_v3_3_False,
        -- True,
        [1] = self.f_box_IsEntityLoaded_v3_3_True,
    });
    params = {
        -- entityId,
        [0] = self.HostageEntity,
    };
    return params;
end;

function export:OnEnter_box_IsPawnAlive_v2_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsPawnAlive_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsPawnAlive_v2_2");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_DEBRIEF.domino|@KEY03_020_DEBRIEF_HostageStatus|2105620081");
    l0:SetConnections({
        -- False,
        [0] = self.f_box_IsPawnAlive_v2_2_False,
        -- True,
        [1] = self.f_box_IsPawnAlive_v2_2_True,
    });
    params = {
        -- Pawn,
        [0] = self.HostageEntity,
    };
    return params;
end;

-- Empty out anchor definitions
function export:Not_Loaded()
    
end;
function export:Dead_Loaded()
    
end;
function export:Alive_Loaded()
    
end;
_compilerVersion = 60;
<DominoMetadata IsStateless="0" IsSystem="0">
	<ControlsIn>
		<ControlIn Name="In" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
	</ControlsIn>
	<ControlsOut>
		<ControlOut Name="Alive_Loaded" AnchorDynType="0" IsDelayed="0" />
		<ControlOut Name="Dead_Loaded" AnchorDynType="0" IsDelayed="0" />
		<ControlOut Name="Not_Loaded" AnchorDynType="0" IsDelayed="0" />
	</ControlsOut>
	<DatasIn>
		<DataIn Name="HostageEntity" AnchorDynType="0" DataTypeID="entity" />
	</DatasIn>
	<DatasOut />
</DominoMetadata>
