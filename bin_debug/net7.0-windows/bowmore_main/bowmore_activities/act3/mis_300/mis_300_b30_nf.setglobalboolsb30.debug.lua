LUAC  -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/bowmore_main/bowmore_activities/act3/mis_300/mis_300_b30_nf.domino
-- User graph: SetGlobalBoolsB30
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
        cboxRes:RegisterGlobals("Domino/user/Bowmore_main/Bowmore_Activities/act3/MIS_300/MIS_300_B30_nf.globals.lua");
    end;
end;

function export:ResetLocalGlobals()
    Globals.MIS_300_B30_nf = nil;
    Globals.MIS_300_B30_nf = {
        eSwitch1 = nil,
        eSwitch2 = nil,
        eSwitch3 = nil,
        eSwitch4 = nil,
        eSwitchInteracted = nil,
        bBombDefused = false,
        gPlayerGroup = nil,
        bTooMuchDead = false,
        bTimerSuccess = true,
        ePlayer = nil,
    };
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/Bowmore_main/Bowmore_Activities/act3/MIS_300/MIS_300_B30_nf.SetGlobalBoolsB30.debug.lua")] = {
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
    self._name = "SetGlobalBoolsB30";
    self._elementPathId = "DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B30_nf.domino|@SetGlobalBoolsB30";
    self.Out = DummyFunction;
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_SetBoolean_v2_4();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B30_nf.domino|@SetGlobalBoolsB30|374666316", "374666316", "SetGlobalBoolsB30", "In", "box_SetBoolean_v2_4.False", self, l0:GetLuaBox());
    -- False
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetBoolean_v2_1_Out()
    local l0;
    self:OnExit_box_SetBoolean_v2_1_Out();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    local clone = l0;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B30_nf.domino|@SetGlobalBoolsB30|464110519", "464110519", "SetGlobalBoolsB30", "box_SetBoolean_v2_1.Out", "Out", clone:GetLuaBox(), self);
    self:Out();
end;

function export:f_box_SetBoolean_v2_4_Out()
    local params, l0;
    self:OnExit_box_SetBoolean_v2_4_Out();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetBoolean_v2_5();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B30_nf.domino|@SetGlobalBoolsB30|529959999", "529959999", "SetGlobalBoolsB30", "box_SetBoolean_v2_4.Out", "box_SetBoolean_v2_5.False", clone:GetLuaBox(), l0:GetLuaBox());
    -- False
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetBoolean_v2_5_Out()
    local params, l0;
    self:OnExit_box_SetBoolean_v2_5_Out();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetBoolean_v2_1();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B30_nf.domino|@SetGlobalBoolsB30|365727597", "365727597", "SetGlobalBoolsB30", "box_SetBoolean_v2_5.Out", "box_SetBoolean_v2_1.True", clone:GetLuaBox(), l0:GetLuaBox());
    -- True
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:OnEnter_box_SetBoolean_v2_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_1");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B30_nf.domino|@SetGlobalBoolsB30|117426404");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_1_Out,
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
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B30_nf.domino|@SetGlobalBoolsB30|953819533");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_4_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_5");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B30_nf.domino|@SetGlobalBoolsB30|1141075566");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_5_Out,
    });
    params = {
    };
    return params;
end;

function export:OnExit_box_SetBoolean_v2_1_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    Globals.MIS_300_B30_nf.bTimerSuccess = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetBoolean_v2_4_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    Globals.MIS_300_B30_nf.bTooMuchDead = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetBoolean_v2_5_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    Globals.MIS_300_B30_nf.bBombDefused = l0:GetDataOutValue(0);
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
