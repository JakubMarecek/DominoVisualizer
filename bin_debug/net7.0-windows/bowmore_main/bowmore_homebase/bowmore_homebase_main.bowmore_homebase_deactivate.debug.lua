LUAC�)  -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/bowmore_main/bowmore_homebase/bowmore_homebase_main.domino
-- User graph: Bowmore_Homebase_Deactivate
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
        cboxRes:RegisterBox("Domino/System/Delay_v5.lua");
        cboxRes:RegisterBox("Domino/System/IsGunsForHire_v2.lua");
        cboxRes:RegisterBox("Domino/System/SetAnimalNaturalBehaviorState.lua");
        
        -- Load resources
        cboxRes:LoadResource([[entityarchetypeslibrary/9015197731757230.ark.fcb]], "CEntityArchetypeRes");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/Bowmore_main/Bowmore_Homebase/Bowmore_Homebase_Main.Bowmore_Homebase_Deactivate.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/System/Delay_v5.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Pause",
            },
            [1] = {
                name = "Resume",
            },
            [2] = {
                name = "Start",
            },
            [3] = {
                name = "Stop",
            },
        },
        controlInCount = 4,
        controlOut = {
            [0] = {
                name = "LoopingEnded",
                delayed = true,
            },
            [1] = {
                name = "Paused",
                delayed = false,
            },
            [2] = {
                name = "Resumed",
                delayed = false,
            },
            [3] = {
                name = "Started",
                delayed = false,
            },
            [4] = {
                name = "Stopped",
                delayed = false,
            },
            [5] = {
                name = "TimeElapsed",
                delayed = true,
            },
        },
        controlOutCount = 6,
        dataIn = {
            [0] = {
                name = "loop",
                type = "bool",
            },
            [1] = {
                name = "nbLoop",
                type = "int",
            },
            [2] = {
                name = "seconds",
                type = "float",
            },
        },
        dataInCount = 3,
        dataOut = {
            [0] = {
                name = "currentLoop",
                type = "int",
            },
        },
        dataOutCount = 1,
    };
    metadataTable[GetPathID("Domino/System/IsGunsForHire_v2.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "In",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "None",
                delayed = false,
            },
            [1] = {
                name = "Out",
                delayed = false,
            },
            [2] = {
                name = "Roster",
                delayed = false,
            },
            [3] = {
                name = "Squad",
                delayed = false,
            },
        },
        controlOutCount = 4,
        dataIn = {
            [0] = {
                name = "Player",
                type = "entity",
            },
            [1] = {
                name = "targetGFHArchetype",
                type = "archetype",
            },
            [2] = {
                name = "targetGFHEntity",
                type = "entity",
            },
        },
        dataInCount = 3,
        dataOut = {
            [0] = {
                name = "affectedGFHEntity",
                type = "entity",
            },
        },
        dataOutCount = 1,
    };
    metadataTable[GetPathID("Domino/System/SetAnimalNaturalBehaviorState.lua")] = {
        stateless = true,
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
                name = "Disabled",
                delayed = false,
            },
            [1] = {
                name = "Enabled",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "FFHEntityId",
                type = "entity",
            },
            [1] = {
                name = "player",
                type = "entity",
            },
            [2] = {
                name = "uniqueFFHArchetype",
                type = "archetype",
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
    self._name = "Bowmore_Homebase_Deactivate";
    self._elementPathId = "DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Main.domino|@Bowmore_Homebase_Deactivate";
    self.Out = DummyFunction;
    self.box_Delay_v5_3 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_3;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_3");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Main.domino|@Bowmore_Homebase_Deactivate|2119112243");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_3_TimeElapsed,
    });
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_Delay_v5_3();
    l0 = self.box_Delay_v5_3;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Main.domino|@Bowmore_Homebase_Deactivate|1664594403", "1664594403", "Bowmore_Homebase_Deactivate", "In", "box_Delay_v5_3.Start", self, l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_IsGunsForHire_v2_4_Out()
    self:OnExit_box_IsGunsForHire_v2_4_Out();
end;

function export:f_box_IsGunsForHire_v2_4_Roster()
    self:OnExit_box_IsGunsForHire_v2_4_Roster();
end;

function export:f_box_IsGunsForHire_v2_4_Squad()
    local params, l0;
    self:OnExit_box_IsGunsForHire_v2_4_Squad();
    l0 = Boxes[GetPathID("Domino/System/IsGunsForHire_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetAnimalNaturalBehaviorState_5();
    l0 = Boxes[GetPathID("Domino/System/SetAnimalNaturalBehaviorState.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Main.domino|@Bowmore_Homebase_Deactivate|339300851", "339300851", "Bowmore_Homebase_Deactivate", "box_IsGunsForHire_v2_4.Squad", "box_SetAnimalNaturalBehaviorState_5.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_3_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_IsGunsForHire_v2_4();
    l0 = self.box_Delay_v5_3;
    l1 = Boxes[GetPathID("Domino/System/IsGunsForHire_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Main.domino|@Bowmore_Homebase_Deactivate|1346392558", "1346392558", "Bowmore_Homebase_Deactivate", "box_Delay_v5_3.TimeElapsed", "box_IsGunsForHire_v2_4.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:OnEnter_box_SetAnimalNaturalBehaviorState_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetAnimalNaturalBehaviorState.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetAnimalNaturalBehaviorState_5");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Main.domino|@Bowmore_Homebase_Deactivate|733385887");
    l0:SetConnections({
    });
    params = {
        -- uniqueFFHArchetype,
        [2] = "9015197731757230",
    };
    return params;
end;

function export:OnEnter_box_IsGunsForHire_v2_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsGunsForHire_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsGunsForHire_v2_4");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Main.domino|@Bowmore_Homebase_Deactivate|2030845015");
    l0:SetConnections({
        -- None,
        [0] = self.f_box_IsGunsForHire_v2_4_None,
        -- Out,
        [1] = self.f_box_IsGunsForHire_v2_4_Out,
        -- Roster,
        [2] = self.f_box_IsGunsForHire_v2_4_Roster,
        -- Squad,
        [3] = self.f_box_IsGunsForHire_v2_4_Squad,
    });
    params = {
        -- targetGFHArchetype,
        [1] = "9015197731757230",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_3()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 5,
    };
    return params;
end;

function export:OnExit_box_IsGunsForHire_v2_4_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IsGunsForHire_v2.lua")];
    self._sld_affectedGFHEntity_box_IsGunsForHire_v2_4 = l0:GetDataOutValue(0);
    self._sld_affectedGFHEntity_box_IsGunsForHire_v2_4 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_IsGunsForHire_v2_4_Roster()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IsGunsForHire_v2.lua")];
    self._sld_affectedGFHEntity_box_IsGunsForHire_v2_4 = l0:GetDataOutValue(0);
    self._sld_affectedGFHEntity_box_IsGunsForHire_v2_4 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_IsGunsForHire_v2_4_Squad()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IsGunsForHire_v2.lua")];
    self._sld_affectedGFHEntity_box_IsGunsForHire_v2_4 = l0:GetDataOutValue(0);
    self._sld_affectedGFHEntity_box_IsGunsForHire_v2_4 = l0:GetDataOutValue(0);
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
