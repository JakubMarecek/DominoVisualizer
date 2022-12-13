LUACF  -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc5_main/fc5_activities/questlines/uniquecharacters/uni58/uni58_020/uni58_020_brief.domino
-- User graph: CaveOpenNavlinks
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
    metadataTable[GetPathID("Domino/user/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI58/UNI58_020/UNI58_020_BRIEF.CaveOpenNavlinks.debug.lua")] = {
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
    self._name = "CaveOpenNavlinks";
    self._elementPathId = "DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI58\\UNI58_020\\UNI58_020_BRIEF.domino|@CaveOpenNavlinks";
    self.box_NavLinkModifier_2 = cbox:CreateBox("Domino/System/AI/NavLinkModifier.lua");
    l0 = self.box_NavLinkModifier_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NavLinkModifier_2");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI58\\UNI58_020\\UNI58_020_BRIEF.domino|@CaveOpenNavlinks|511600988");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_NavLinkModifier_2_Activated,
    });
    self.box_NavLinkModifier_1 = cbox:CreateBox("Domino/System/AI/NavLinkModifier.lua");
    l0 = self.box_NavLinkModifier_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NavLinkModifier_1");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI58\\UNI58_020\\UNI58_020_BRIEF.domino|@CaveOpenNavlinks|1226268648");
    l0:SetConnections({
    });
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_NavLinkModifier_2();
    l0 = self.box_NavLinkModifier_2;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI58\\UNI58_020\\UNI58_020_BRIEF.domino|@CaveOpenNavlinks|213243572", "213243572", "CaveOpenNavlinks", "In", "box_NavLinkModifier_2.Activate", self, l0:GetLuaBox());
    -- Activate
    l0:Exec(0, params);
end;

function export:f_box_NavLinkModifier_2_Activated()
    local params, l0, l1;
    params = self:OnEnter_box_NavLinkModifier_1();
    l0 = self.box_NavLinkModifier_2;
    l1 = self.box_NavLinkModifier_1;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI58\\UNI58_020\\UNI58_020_BRIEF.domino|@CaveOpenNavlinks|1637383090", "1637383090", "CaveOpenNavlinks", "box_NavLinkModifier_2.Activated", "box_NavLinkModifier_1.Activate", l0:GetLuaBox(), l1:GetLuaBox());
    -- Activate
    l1:Exec(0, params);
end;

function export:OnEnter_box_NavLinkModifier_2()
    local params;
    params = {
        -- Entity,
        [0] = "2102447173615512179",
    };
    return params;
end;

function export:OnEnter_box_NavLinkModifier_1()
    local params;
    params = {
        -- Entity,
        [0] = "2102447181697935991",
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
