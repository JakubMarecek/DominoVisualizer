LUACD  -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/bowmore_main/bowmore_activities/act3/mis_300/mis_300_b10.domino
-- User graph: SetGlobalBoolsB10
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
        cboxRes:RegisterBox("Domino/System/SetBoolean_v2.lua");
        -- External globals dependencies
        cboxRes:RegisterGlobals("Domino/user/Bowmore_main/Bowmore_Activities/act3/MIS_300/MIS_300_B10.globals.lua");
    end;
end;

function export:ResetLocalGlobals()
    Globals.MIS_300_B10 = nil;
    Globals.MIS_300_B10 = {
        bBreakersDone = false,
        bTankDone = false,
        bHostageAllDead = false,
        gPlayerGroup = nil,
    };
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/Bowmore_main/Bowmore_Activities/act3/MIS_300/MIS_300_B10.SetGlobalBoolsB10.debug.lua")] = {
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
    self._name = "SetGlobalBoolsB10";
    self._elementPathId = "DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@SetGlobalBoolsB10";
    self.Out = DummyFunction;
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_SetBoolean_v2_3();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@SetGlobalBoolsB10|1378097809", "1378097809", "SetGlobalBoolsB10", "In", "box_SetBoolean_v2_3.False", self, l0:GetLuaBox());
    -- False
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetBoolean_v2_3_Out()
    local params, l0;
    self:OnExit_box_SetBoolean_v2_3_Out();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetBoolean_v2_4();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@SetGlobalBoolsB10|116125463", "116125463", "SetGlobalBoolsB10", "box_SetBoolean_v2_3.Out", "box_SetBoolean_v2_4.False", clone:GetLuaBox(), l0:GetLuaBox());
    -- False
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetBoolean_v2_4_Out()
    local params, l0;
    self:OnExit_box_SetBoolean_v2_4_Out();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetBoolean_v2_8();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@SetGlobalBoolsB10|459079936", "459079936", "SetGlobalBoolsB10", "box_SetBoolean_v2_4.Out", "box_SetBoolean_v2_8.False", clone:GetLuaBox(), l0:GetLuaBox());
    -- False
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetBoolean_v2_8_Out()
    local l0;
    self:OnExit_box_SetBoolean_v2_8_Out();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    local clone = l0;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@SetGlobalBoolsB10|992785685", "992785685", "SetGlobalBoolsB10", "box_SetBoolean_v2_8.Out", "Out", clone:GetLuaBox(), self);
    self:Out();
end;

function export:OnEnter_box_SetBoolean_v2_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_3");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@SetGlobalBoolsB10|235548528");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_3_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_4");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@SetGlobalBoolsB10|333931450");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_4_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_8()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_8");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@SetGlobalBoolsB10|450094560");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_8_Out,
    });
    params = {
    };
    return params;
end;

function export:OnExit_box_SetBoolean_v2_3_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    Globals.MIS_300_B10.bTankDone = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetBoolean_v2_4_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    Globals.MIS_300_B10.bBreakersDone = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetBoolean_v2_8_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    Globals.MIS_300_B10.bHostageAllDead = l0:GetDataOutValue(0);
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
