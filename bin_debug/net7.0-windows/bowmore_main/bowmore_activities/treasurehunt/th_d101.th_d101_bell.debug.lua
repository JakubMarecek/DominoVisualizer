LUACiK  -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/bowmore_main/bowmore_activities/treasurehunt/th_d101.domino
-- User graph: TH_D101_Bell
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
        cboxRes:RegisterBox("Domino/System/ExplosiveProximityTriggerListener.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/ProximityTrigger_v3.lua");
        cboxRes:RegisterBox("Domino/System/SoundModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/StaticBreakableListener.lua");
        
        -- Load resources
        cboxRes:LoadResource([[2586121821.bnk]], "CSoundResource");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/Bowmore_main/Bowmore_Activities/TreasureHunt/TH_D101.TH_D101_Bell.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "In",
            },
        },
        controlInCount = 1,
        controlOut = {
        },
        controlOutCount = 0,
        dataIn = {
        },
        dataInCount = 0,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/ExplosiveProximityTriggerListener.lua")] = {
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
                name = "Disabled",
                delayed = false,
            },
            [1] = {
                name = "Enabled",
                delayed = false,
            },
            [2] = {
                name = "Enter",
                delayed = true,
            },
            [3] = {
                name = "InsideExplosion",
                delayed = true,
            },
            [4] = {
                name = "Leave",
                delayed = true,
            },
        },
        controlOutCount = 5,
        dataIn = {
            [0] = {
                name = "nameFilter",
                type = "string",
            },
            [1] = {
                name = "Trigger",
                type = "entity",
            },
            [2] = {
                name = "typeFilter",
                type = "string",
            },
        },
        dataInCount = 3,
        dataOut = {
            [0] = {
                name = "explosionEntity",
                type = "entity",
            },
        },
        dataOutCount = 1,
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
    metadataTable[GetPathID("Domino/System/ProximityTrigger_v3.lua")] = {
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
                name = "Disabled",
                delayed = false,
            },
            [1] = {
                name = "Enabled",
                delayed = false,
            },
            [2] = {
                name = "Enter",
                delayed = true,
            },
            [3] = {
                name = "Leave",
                delayed = true,
            },
            [4] = {
                name = "OnAllInside",
                delayed = true,
            },
            [5] = {
                name = "OnEmpty",
                delayed = true,
            },
            [6] = {
                name = "OnOccupied",
                delayed = true,
            },
            [7] = {
                name = "Use",
                delayed = true,
            },
        },
        controlOutCount = 8,
        dataIn = {
            [0] = {
                name = "autoDisable",
                type = "bool",
            },
            [1] = {
                name = "colliderFilterId",
                type = "group",
            },
            [2] = {
                name = "requiresPawnsActive",
                type = "bool",
            },
            [3] = {
                name = "triggerId",
                type = "entity",
            },
        },
        dataInCount = 4,
        dataOut = {
            [0] = {
                name = "colliderId",
                type = "entity",
            },
        },
        dataOutCount = 1,
    };
    metadataTable[GetPathID("Domino/System/SoundModifier_v2.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Play",
            },
            [1] = {
                name = "Stop",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "Finished",
                delayed = true,
            },
            [1] = {
                name = "Started",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "Pawns",
                type = "group",
            },
            [1] = {
                name = "SoundId",
                type = "Sound",
            },
            [2] = {
                name = "SoundType",
                type = "SoundType",
            },
            [3] = {
                name = "StopFadeOut",
                type = "float",
            },
            [4] = {
                name = "UseSubtitles",
                type = "bool",
            },
        },
        dataInCount = 5,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/StaticBreakableListener.lua")] = {
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
                name = "Disabled",
                delayed = false,
            },
            [1] = {
                name = "Enabled",
                delayed = false,
            },
            [2] = {
                name = "OnBreak",
                delayed = true,
            },
            [3] = {
                name = "OnBreakAll",
                delayed = true,
            },
            [4] = {
                name = "OnDamage",
                delayed = true,
            },
            [5] = {
                name = "OnHit",
                delayed = true,
            },
            [6] = {
                name = "OnStateChanged",
                delayed = true,
            },
        },
        controlOutCount = 7,
        dataIn = {
            [0] = {
                name = "autoDisable",
                type = "bool",
            },
            [1] = {
                name = "entity",
                type = "group",
            },
        },
        dataInCount = 2,
        dataOut = {
            [0] = {
                name = "instigatorID",
                type = "entity",
            },
            [1] = {
                name = "stateID",
                type = "int",
            },
            [2] = {
                name = "targetID",
                type = "entity",
            },
        },
        dataOutCount = 3,
    };
end;

function export:Init(cbox)
    local l0;
    self._name = "TH_D101_Bell";
    self._elementPathId = "DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_D101.domino|@TH_D101_Bell";
    self.box_ExplosiveProximityTriggerListener_3 = cbox:CreateBox("Domino/System/ExplosiveProximityTriggerListener.lua");
    l0 = self.box_ExplosiveProximityTriggerListener_3;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ExplosiveProximityTriggerListener_3");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_D101.domino|@TH_D101_Bell|15951146");
    l0:SetConnections({
        -- InsideExplosion,
        [3] = self.f_box_ExplosiveProximityTriggerListener_3_InsideExplosion,
    });
    self.box_ProximityTrigger_v3_5 = cbox:CreateBox("Domino/System/ProximityTrigger_v3.lua");
    l0 = self.box_ProximityTrigger_v3_5;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v3_5");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_D101.domino|@TH_D101_Bell|71867297");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v3_5_Enter,
    });
    self.box_MultipleOR_1 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_1");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_D101.domino|@TH_D101_Bell|258663895");
    l0:SetDynAnchorCount({
        controlIn = {
            [0] = 8,
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
        [0] = self.f_box_MultipleOR_1_Out,
    });
    self.box_SoundModifier_v2_2 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_2");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_D101.domino|@TH_D101_Bell|1942969120");
    l0:SetConnections({
    });
    self.box_StaticBreakableListener_4 = cbox:CreateBox("Domino/System/StaticBreakableListener.lua");
    l0 = self.box_StaticBreakableListener_4;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StaticBreakableListener_4");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_D101.domino|@TH_D101_Bell|1982478267");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_StaticBreakableListener_4_Enabled,
        -- OnBreak,
        [2] = self.f_box_StaticBreakableListener_4_OnBreak,
        -- OnDamage,
        [4] = self.f_box_StaticBreakableListener_4_OnDamage,
        -- OnHit,
        [5] = self.f_box_StaticBreakableListener_4_OnHit,
        -- OnStateChanged,
        [6] = self.f_box_StaticBreakableListener_4_OnStateChanged,
    });
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_StaticBreakableListener_4();
    l0 = self.box_StaticBreakableListener_4;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_D101.domino|@TH_D101_Bell|199669493", "199669493", "TH_D101_Bell", "In", "box_StaticBreakableListener_4.Enable", self, l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_ExplosiveProximityTriggerListener_3_InsideExplosion()
    local l0, l1;
    l0 = self.box_ExplosiveProximityTriggerListener_3;
    l1 = self.box_MultipleOR_1;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_D101.domino|@TH_D101_Bell|697597646", "697597646", "TH_D101_Bell", "box_ExplosiveProximityTriggerListener_3.InsideExplosion", "box_MultipleOR_1.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ProximityTrigger_v3_5_Enter()
    local l0, l1;
    l0 = self.box_ProximityTrigger_v3_5;
    l1 = self.box_MultipleOR_1;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_D101.domino|@TH_D101_Bell|1068622810", "1068622810", "TH_D101_Bell", "box_ProximityTrigger_v3_5.Enter", "box_MultipleOR_1.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_MultipleOR_1_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SoundModifier_v2_2();
    l0 = self.box_MultipleOR_1;
    l1 = self.box_SoundModifier_v2_2;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_D101.domino|@TH_D101_Bell|1663733764", "1663733764", "TH_D101_Bell", "box_MultipleOR_1.Out", "box_SoundModifier_v2_2.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_6_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ExplosiveProximityTriggerListener_3();
    l0 = self.box_ExplosiveProximityTriggerListener_3;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_D101.domino|@TH_D101_Bell|1716280502", "1716280502", "TH_D101_Bell", "box_OutputOrder_v2_6.Out", "box_ExplosiveProximityTriggerListener_3.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_6_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v3_5();
    l0 = self.box_ProximityTrigger_v3_5;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_D101.domino|@TH_D101_Bell|2038142019", "2038142019", "TH_D101_Bell", "box_OutputOrder_v2_6.Out", "box_ProximityTrigger_v3_5.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_StaticBreakableListener_4_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_6();
    l0 = self.box_StaticBreakableListener_4;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_D101.domino|@TH_D101_Bell|1541964851", "1541964851", "TH_D101_Bell", "box_StaticBreakableListener_4.Enabled", "box_OutputOrder_v2_6.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_StaticBreakableListener_4_OnBreak()
    local l0, l1;
    l0 = self.box_StaticBreakableListener_4;
    l1 = self.box_MultipleOR_1;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_D101.domino|@TH_D101_Bell|1338413510", "1338413510", "TH_D101_Bell", "box_StaticBreakableListener_4.OnBreak", "box_MultipleOR_1.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 4);
end;

function export:f_box_StaticBreakableListener_4_OnDamage()
    local l0, l1;
    l0 = self.box_StaticBreakableListener_4;
    l1 = self.box_MultipleOR_1;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_D101.domino|@TH_D101_Bell|483516413", "483516413", "TH_D101_Bell", "box_StaticBreakableListener_4.OnDamage", "box_MultipleOR_1.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 3);
end;

function export:f_box_StaticBreakableListener_4_OnHit()
    local l0, l1;
    l0 = self.box_StaticBreakableListener_4;
    l1 = self.box_MultipleOR_1;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_D101.domino|@TH_D101_Bell|609926841", "609926841", "TH_D101_Bell", "box_StaticBreakableListener_4.OnHit", "box_MultipleOR_1.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_StaticBreakableListener_4_OnStateChanged()
    local l0, l1;
    l0 = self.box_StaticBreakableListener_4;
    l1 = self.box_MultipleOR_1;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_D101.domino|@TH_D101_Bell|1287046274", "1287046274", "TH_D101_Bell", "box_StaticBreakableListener_4.OnStateChanged", "box_MultipleOR_1.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 5);
end;

function export:OnEnter_box_ExplosiveProximityTriggerListener_3()
    local params;
    params = {
        -- Trigger,
        [1] = "2109166794009742622",
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v3_5()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- requiresPawnsActive,
        [2] = false,
        -- triggerId,
        [3] = "2109747546780909554",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_6");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_D101.domino|@TH_D101_Bell|945752574");
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
                [0] = self.f_box_OutputOrder_v2_6_Out_0,
                [1] = self.f_box_OutputOrder_v2_6_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_2()
    local params;
    params = {
        -- Pawns,
        [0] = "2109302410814961446",
        -- SoundId,
        [1] = "2586121821",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_StaticBreakableListener_4()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- entity,
        [1] = "2107520677555738716",
    };
    return params;
end;

-- Empty out anchor definitions
_compilerVersion = 60;
<DominoMetadata IsStateless="0" IsSystem="0">
	<ControlsIn>
		<ControlIn Name="In" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
	</ControlsIn>
	<ControlsOut />
	<DatasIn />
	<DatasOut />
</DominoMetadata>
