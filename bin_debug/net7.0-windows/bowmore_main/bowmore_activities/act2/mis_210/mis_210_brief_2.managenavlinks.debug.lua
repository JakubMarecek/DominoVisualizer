LUAC�!  -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/bowmore_main/bowmore_activities/act2/mis_210/mis_210_brief_2.domino
-- User graph: ManageNavlinks
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
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/Bowmore_main/Bowmore_Activities/ACT2/MIS_210/MIS_210_BRIEF_2.ManageNavlinks.debug.lua")] = {
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
end;

function export:Init(cbox)
    local l0;
    self._name = "ManageNavlinks";
    self._elementPathId = "DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_BRIEF_2.domino|@ManageNavlinks";
    self.Out = DummyFunction;
    self.box_NavLinkModifier_1 = cbox:CreateBox("Domino/System/AI/NavLinkModifier.lua");
    l0 = self.box_NavLinkModifier_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NavLinkModifier_1");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_BRIEF_2.domino|@ManageNavlinks|314040715");
    l0:SetConnections({
        -- Deactivated,
        [1] = self.f_box_NavLinkModifier_1_Deactivated,
    });
    self.box_NavLinkModifier_3 = cbox:CreateBox("Domino/System/AI/NavLinkModifier.lua");
    l0 = self.box_NavLinkModifier_3;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NavLinkModifier_3");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_BRIEF_2.domino|@ManageNavlinks|1188340602");
    l0:SetConnections({
        -- Deactivated,
        [1] = self.f_box_NavLinkModifier_3_Deactivated,
    });
    self.box_NavLinkModifier_5 = cbox:CreateBox("Domino/System/AI/NavLinkModifier.lua");
    l0 = self.box_NavLinkModifier_5;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NavLinkModifier_5");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_BRIEF_2.domino|@ManageNavlinks|1406578121");
    l0:SetConnections({
        -- Deactivated,
        [1] = self.f_box_NavLinkModifier_5_Deactivated,
    });
    self.box_NavLinkModifier_4 = cbox:CreateBox("Domino/System/AI/NavLinkModifier.lua");
    l0 = self.box_NavLinkModifier_4;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NavLinkModifier_4");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_BRIEF_2.domino|@ManageNavlinks|1406632202");
    l0:SetConnections({
        -- Deactivated,
        [1] = self.f_box_NavLinkModifier_4_Deactivated,
    });
    self.box_NavLinkModifier_2 = cbox:CreateBox("Domino/System/AI/NavLinkModifier.lua");
    l0 = self.box_NavLinkModifier_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NavLinkModifier_2");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_BRIEF_2.domino|@ManageNavlinks|2050251528");
    l0:SetConnections({
        -- Deactivated,
        [1] = self.f_box_NavLinkModifier_2_Deactivated,
    });
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_NavLinkModifier_3();
    l0 = self.box_NavLinkModifier_3;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_BRIEF_2.domino|@ManageNavlinks|456688009", "456688009", "ManageNavlinks", "In", "box_NavLinkModifier_3.Deactivate", self, l0:GetLuaBox());
    -- Deactivate
    l0:Exec(1, params);
end;

function export:f_box_NavLinkModifier_1_Deactivated()
    local params, l0, l1;
    params = self:OnEnter_box_NavLinkModifier_2();
    l0 = self.box_NavLinkModifier_1;
    l1 = self.box_NavLinkModifier_2;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_BRIEF_2.domino|@ManageNavlinks|572851794", "572851794", "ManageNavlinks", "box_NavLinkModifier_1.Deactivated", "box_NavLinkModifier_2.Deactivate", l0:GetLuaBox(), l1:GetLuaBox());
    -- Deactivate
    l1:Exec(1, params);
end;

function export:f_box_NavLinkModifier_3_Deactivated()
    local params, l0, l1;
    params = self:OnEnter_box_NavLinkModifier_4();
    l0 = self.box_NavLinkModifier_3;
    l1 = self.box_NavLinkModifier_4;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_BRIEF_2.domino|@ManageNavlinks|444669696", "444669696", "ManageNavlinks", "box_NavLinkModifier_3.Deactivated", "box_NavLinkModifier_4.Deactivate", l0:GetLuaBox(), l1:GetLuaBox());
    -- Deactivate
    l1:Exec(1, params);
end;

function export:f_box_NavLinkModifier_5_Deactivated()
    local l0;
    l0 = self.box_NavLinkModifier_5;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_BRIEF_2.domino|@ManageNavlinks|1666853783", "1666853783", "ManageNavlinks", "box_NavLinkModifier_5.Deactivated", "Out", l0:GetLuaBox(), self);
    self:Out();
end;

function export:f_box_NavLinkModifier_4_Deactivated()
    local params, l0, l1;
    params = self:OnEnter_box_NavLinkModifier_1();
    l0 = self.box_NavLinkModifier_4;
    l1 = self.box_NavLinkModifier_1;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_BRIEF_2.domino|@ManageNavlinks|1909787754", "1909787754", "ManageNavlinks", "box_NavLinkModifier_4.Deactivated", "box_NavLinkModifier_1.Deactivate", l0:GetLuaBox(), l1:GetLuaBox());
    -- Deactivate
    l1:Exec(1, params);
end;

function export:f_box_NavLinkModifier_2_Deactivated()
    local params, l0, l1;
    params = self:OnEnter_box_NavLinkModifier_5();
    l0 = self.box_NavLinkModifier_2;
    l1 = self.box_NavLinkModifier_5;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_BRIEF_2.domino|@ManageNavlinks|295080966", "295080966", "ManageNavlinks", "box_NavLinkModifier_2.Deactivated", "box_NavLinkModifier_5.Deactivate", l0:GetLuaBox(), l1:GetLuaBox());
    -- Deactivate
    l1:Exec(1, params);
end;

function export:OnEnter_box_NavLinkModifier_1()
    local params;
    params = {
        -- Entity,
        [0] = "2109857704569737948",
    };
    return params;
end;

function export:OnEnter_box_NavLinkModifier_3()
    local params;
    params = {
        -- Entity,
        [0] = "2109857694092366548",
    };
    return params;
end;

function export:OnEnter_box_NavLinkModifier_5()
    local params;
    params = {
        -- Entity,
        [0] = "2109857837308973804",
    };
    return params;
end;

function export:OnEnter_box_NavLinkModifier_4()
    local params;
    params = {
        -- Entity,
        [0] = "2109857701925229272",
    };
    return params;
end;

function export:OnEnter_box_NavLinkModifier_2()
    local params;
    params = {
        -- Entity,
        [0] = "2109857829776003816",
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
